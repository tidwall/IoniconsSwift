package main

import (
	"bytes"
	"encoding/json"
	"io/ioutil"
	"log"
	"strings"
)

type Icon struct {
	Code string `json:"code"`
	Name string `json:"name"`
}

type Data struct {
	BuildHash string `json:"build_hash"`
	Prefix    string `json:"prefix"`
	Version   string `json:"version"`
	Name      string `json:"name"`
	Icons     []Icon `json:"icons"`
}

func (data Data) SwiftSource(template string) string {
	var buffer bytes.Buffer
	buffer.WriteString("	case None = \"\"\n")
	for _, icon := range data.Icons {
		var parts = strings.Split(icon.Name, "-")
		for i := range parts {
			parts[i] = strings.ToUpper(parts[i][0:1]) + parts[i][1:]
		}
		buffer.WriteString("	case ")
		buffer.WriteString(strings.Join(parts, ""))
		buffer.WriteString(" = \"\\u{")
		buffer.WriteString(icon.Code[2:])
		buffer.WriteString("}\"\n")
	}
	template = strings.Replace(template, "{{Items}}", buffer.String(), -1)
	return template
}

func main() {
	b, err := ioutil.ReadFile("build_data.json")
	if err != nil {
		log.Fatal(err.Error())
	}
	var data Data
	if err = json.Unmarshal(b, &data); err != nil {
		log.Fatal(err.Error())
	}
	template, err := ioutil.ReadFile("ionicons.swift")
	if err != nil {
		log.Fatal(err.Error())
	}
	if err = ioutil.WriteFile("../IoniconsSwift/ionicons.swift", []byte(data.SwiftSource(string(template))), 0666); err != nil {
		log.Fatal(err.Error())
	}
}

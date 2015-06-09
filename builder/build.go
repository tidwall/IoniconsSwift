package main

import (
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

func (data Data) SwiftSource() string {
	source := "" +
		"/*\n" +
		"* IoniconsSwift (ionicons.swift)\n" +
		"*\n" +
		"* Copyright (C) 2015 ONcast, LLC. All Rights Reserved.\n" +
		"* Created by Josh Baker (joshbaker77@gmail.com)\n" +
		"*\n" +
		"* This software may be modified and distributed under the terms\n" +
		"* of the MIT license.  See the LICENSE file for details.\n" +
		"*\n" +
		"* The Ionicons TTF font file was originated from http://ionicons.com/\n" +
		"*/\n" +
		"import UIKit\n" +
		"\n" +
		"public enum Ionicons : String {\n" +
		"	public func label(size: CGFloat, color: UIColor = UIColor.blackColor()) -> UILabel {\n" +
		"		let label = UILabel()\n" +
		"		label.font = UIFont(name: \"ionicons\", size: size)\n" +
		"		label.text = rawValue\n" +
		"		label.textColor = color\n" +
		"		label.textAlignment = .Center\n" +
		"		label.backgroundColor = UIColor.clearColor()\n" +
		"		label.frame = CGRectMake(0, 0, size, size)\n" +
		"		label.accessibilityElementsHidden = true\n" +
		"		return label\n" +
		"	}\n"
	for _, icon := range data.Icons {
		var parts = strings.Split(icon.Name, "-")
		for i := range parts {
			parts[i] = strings.ToUpper(parts[i][0:1]) + parts[i][1:]
		}
		source += "	case " + strings.Join(parts, "")
		source += " = \"\\u{" + icon.Code[2:] + "}\"\n"
	}
	source += "" +
		"}\n"
	return source
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
	if err = ioutil.WriteFile("../IoniconsSwift/ionicons.swift", []byte(data.SwiftSource()), 0666); err != nil {
		log.Fatal(err.Error())
	}
}

#!/bin/bash

export GOPATH=$(cd $(dirname "${BASH_SOURCE[0]}"); pwd)
cd $GOPATH

go run build.go


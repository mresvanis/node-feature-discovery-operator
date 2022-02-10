#!/bin/bash -e

# Install deps
gobinpath="$(go env GOPATH)/bin"
curl -sfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh| sh -s -- -b "$gobinpath" v1.42.1
export PATH=$PATH:$gobinpath

# Run verify steps
make verify

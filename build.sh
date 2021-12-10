#!/bin/bash -xe
# See http://tldp.org/LDP/abs/html/options.html
# -x -> Print each command to stdout before executing it, expand commands
# -e -> Abort script at first error, when a command exits with non-zero status
#   (except in until or while loops, if-tests, list constructs)

# Default pwd is /var/app/staging

export GOOS=linux
export GOARCH=amd64
export CGO_ENABLED=0

go build -o bin/application main.go

echo 'Build successful'

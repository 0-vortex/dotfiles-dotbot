#!/bin/bash

BINPATH=$(go env GOPATH)/bin
for repository in "$@"
do
  package=(${repository//\// });
  if [[ ! -f "$BINPATH/${package[1]}" ]]
  then
    go get -u -v "github.com/$repository"
  else
    echo "- ${package[1]} already installed, skipping"
  fi
done

#!/bin/bash

for package in "$@"
do
  if [[ ! -d "$HOME/.npm-global/lib/node_modules/$package" ]]
  then
    npm install --global --loglevel http $package
  else
    echo "- $package already installed, skipping"
  fi
done

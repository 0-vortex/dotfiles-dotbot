#!/bin/bash

for package in "$@"
do
  if [[ ! -d "$HOME/.atom/packages/$package" ]]
  then
    apm-beta install $package
  else
    echo "- $package already installed, skipping"
  fi
done

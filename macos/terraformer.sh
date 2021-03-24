#!/bin/bash

if [ ! -f /usr/local/bin/terraformer ]; then
  #export PROVIDER={all,google,aws,kubernetes}
  export PROVIDER=all
  curl -LO https://github.com/GoogleCloudPlatform/terraformer/releases/download/$(curl -s https://api.github.com/repos/GoogleCloudPlatform/terraformer/releases/latest | grep tag_name | cut -d '"' -f 4)/terraformer-${PROVIDER}-darwin-amd64
  chmod +x terraformer-${PROVIDER}-darwin-amd64
  sudo mv terraformer-${PROVIDER}-darwin-amd64 /usr/local/bin/terraformer
else
  echo "terraformer already installed"
fi

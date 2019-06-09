# Setting and editing of environment variables.

# Variables
export CLICOLOR="YES"
export LSCOLORS="exgxdHdHcxaHaHhBhDeaec"

# Path
export PORTSPATH="/opt/local/bin:/opt/local/sbin"
export PYPATH="/Library/Frameworks/Python.framework/Versions/3.7/bin"
export CARGOPATH="${HOME}/.cargo/bin"
export NPMPATH="${HOME}/.npm-global/bin"
export GOPATH="$(go env GOPATH)/bin"

export PATH="$PATH:$PORTSPATH:$PYPATH:$CARGOPATH:$NPMPATH:$GOPATH"

typeset -U PATH # Remove duplicates in $PATH


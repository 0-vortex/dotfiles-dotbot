# Setting and editing of environment variables.

# Variables
export CLICOLOR="YES"
export LSCOLORS="exgxdHdHcxaHaHhBhDeaec"
export N_PREFIX="${HOME}/.n"
export N_USE_XZ="true"

# Spaceship settings
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_HG_BRANCH_SHOW=false
export SPACESHIP_HG_STATUS_SHOW=false
export SPACESHIP_ELM_SHOW=false
export SPACESHIP_ELIXIR_SHOW=false
export SPACESHIP_PHP_SHOW=false
export SPACESHIP_HASKELL_SHOW=false
export SPACESHIP_VENV_SHOW=false
export SPACESHIP_CONDA_SHOW=false
export SPACESHIP_PYENV_SHOW=false
export SPACESHIP_DOTNET_SHOW=false
export SPACESHIP_EMBER_SHOW=false
export SPACESHIP_BATTERY_THRESHOLD=50
export SPACESHIP_VI_MODE_SHOW=false

# Path
export PORTSPATH="/opt/local/bin:/opt/local/sbin"
export PYPATH="/Library/Frameworks/Python.framework/Versions/3.7/bin"
export CARGOPATH="${HOME}/.cargo/bin"
export NODENPATH="${N_PREFIX}/bin"
export NPMPATH="${HOME}/.npm-global/bin"
export GOBINPATH="$(go env GOPATH)/bin"

export PATH="$NPMPATH:$NODENPATH:$GOBINPATH:$CARGOPATH:$PORTSPATH:$PYPATH:$PATH"

typeset -U PATH # Remove duplicates in $PATH

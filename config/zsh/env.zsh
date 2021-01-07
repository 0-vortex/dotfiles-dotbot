# Setting and editing of environment variables.

# Variables
export CLICOLOR="YES"
export LSCOLORS="exgxdHdHcxaHaHhBhDeaec"
export N_PREFIX="${HOME}/.n"
export N_USE_XZ="true"
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"

# Spaceship settings
export SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  rust          # Rust section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_CONDA_SHOW=false
export SPACESHIP_PYENV_SHOW=false
export SPACESHIP_BATTERY_THRESHOLD=50
export SPACESHIP_DOCKER_CONTEXT_SHOW=false
export SPACESHIP_EXIT_CODE_SHOW=true

export GEM_HOME="${HOME}/.gem"

# Path
export NPMPATH="${HOME}/.npm-global/bin"
export NODENPATH="${N_PREFIX}/bin"
export GOBINPATH="$(go env GOPATH)/bin"
export CARGOPATH="${HOME}/.cargo/bin"
export PORTSPATH="/opt/local/bin:/opt/local/sbin"
export PYPATH="/Library/Frameworks/Python.framework/Versions/3.9/bin"
export GEMBINPATH="${GEM_HOME}/bin"

export PATH="$NPMPATH:$NODENPATH:$GOBINPATH:$CARGOPATH:$PORTSPATH:$PYPATH:$GEMBINPATH:$PATH"

typeset -U PATH # Remove duplicates in $PATH

# update zsh plugins
uz() {
  antibody bundle < ~/.dotfiles/config/zsh/plugins.txt > ~/.zsh_plugins.sh
  antibody update
}

# cd to root dir of git project
droot() {
  cd $(git rev-parse --show-toplevel)
}

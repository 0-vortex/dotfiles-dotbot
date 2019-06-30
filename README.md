# :rocket: :construction: My configuration files for macOS [![GitHub License](https://img.shields.io/github/license/0-vortex/vortex.name.svg)](https://github.com/0-vortex/vortex.name/blob/master/LICENSE)  

> ZSH, JetBrains, Atom

These dotfiles are the various configuration files I use on macOS.

##### Contents

- [Requirements](#requirements)
- [Install](#install)
- [JetBrains](#jetbrains)
- [Atom](#atom)
- [Zsh](#zsh)
  - [Aliases and functions](#aliases-and-functions)
- [Interesting dotfiles](#interesting-dotfiles)
- [Contributing](#contributing)

## Requirements

I describe my custom configuration I use below. It is heavily tailored to my own workflow so it is best you take ideas from it rather than copying the entire config.

1. Boot fresh/user macOS Mojave or above copy.
2. Go through [system preferences](#) & set everything up.
3. Install [Node.js](https://nodejs.org/en/).
4. Install [Go](https://golang.org/dl/).
5. Install [Antibody](http://getantibody.github.io/) via ``curl -sfL git.io/antibody | sh -s - -b /usr/local/bin``
6. Download dotfiles repository recursively and [install](#install).

## Install

I also use [DotBot](https://github.com/anishathalye/dotbot) to apply appropriate symlinks so that I can keep the original files in this one dotfiles dir. Look [here](https://raw.githubusercontent.com/0-vortex/dotfiles/master/.install.conf.yaml) for what exactly it will do. Place this cloned dotfiles repo in `~/.dotfiles/` and run `./install` inside it.

On a working ready machine the process is as simple as running:

```bash
git clone --recurse-submodules -j8  git@github.com:0-vortex/dotfiles.git .dotfiles
cd .dotfiles
./fonts/install.sh
./install.sh
```

## Zsh

I am using [Zsh](http://www.zsh.org) as my shell and [Antibody](https://github.com/getantibody/antibody) to install all my Zsh plugins. For terminal I use [iTerm3](https://www.iterm2.com) with [SpaceDust](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Spacedust.itermcolors) color scheme and [13pt Source Code Pro medium for powerline](https://github.com/powerline/fonts/tree/master/SourceCodePro) font.

### Aliases and functions

I use some aliases to get around my system as fast as possible. You can view them all [here](zsh/alias.zsh).

## Interesting dotfiles

My dotfiles are heavily inspired by:

- [nikitavoloboev/dotfiles](https://github.com/nikitavoloboev/dotfiles)
- [rix1/dotfiles](https://github.com/rix1/dotfiles)
- [audibleblink/dotbot](https://github.com/audibleblink/dotbot)

## Contributing

[Suggestions](../../issues/) on how I can improve the structure of these dotfiles as well as suggesting new and awesome tools are welcome.

## Thank you

[![Twitter](https://bit.ly/2K9PC8q)](https://twitter.com/0_vortex)

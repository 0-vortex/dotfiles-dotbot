# :rocket: :construction: My configuration files for macOS [![GitHub License](https://img.shields.io/github/license/0-vortex/vortex.name.svg)](https://github.com/0-vortex/vortex.name/blob/master/LICENSE)  

> ZSH, JetBrains, Atom

These dotfiles are the various configuration files I use on macOS.

##### Contents

- [System Preferences](#system-preferences)
- [Requirements](#requirements)
- [Install](#install)
- [JetBrains](#jetbrains)
- [Atom](#atom)
- [Zsh](#zsh)
  - [Aliases and functions](#aliases-and-functions)
- [Interesting dotfiles](#interesting-dotfiles)
- [Contributing](#contributing)

## System Preferences

![macOS Catalina](static/preferences/macos-catalina.png)

### General

![General settings](static/preferences/general.png)

### Dock

![Dock](static/preferences/dock.png)

### Trackpad

![Trackpad point & click](static/preferences/trackpad-1-point-and-click.png)
![Trackpad scroll & zoom](static/preferences/trackpad-2-scroll-and-zoom.png)
![Trackpad more gestures](static/preferences/trackpad-3-more-gestures.png)

### Built-in Retina Display

![Display settings](static/preferences/displays-1-display.png)
![Display night shift](static/preferences/displays-2-night-shift.png)

### Mission Control

![Mission Control](static/preferences/mission-control.png)

### Software Update

![Software Update](static/preferences/software-update.png)

### Date & Time

![Date & Time](static/preferences/date-and-time.png)

### Energy Saver

![Energy Saver battery](static/preferences/energy-saver-1-battery.png)
![Energy Saver power adapter](static/preferences/energy-saver-1-power-adapter.png)

### Bluetooth

![Bluetooth](static/preferences/bluetooth.png)

### Sound

![Sound](static/preferences/sound.png)

### Desktop & Screen Saver

![Desktop & Screen Saver desktop](static/preferences/desktop-and-screensaver-1-desktop.png)
![Desktop & Screen Saver screen saver](static/preferences/desktop-and-screensaver-2-screen-saver.png)
![Desktop & Screen Saver hot corners](static/preferences/desktop-and-screensaver-3-hot-corners.png)

## Requirements

I describe my custom configuration I use below. It is heavily tailored to my own workflow so it is best you take ideas from it rather than copying the entire config.

1. Boot fresh/user macOS Mojave or above copy.
2. Go through [system preferences](#system-preferences) & set everything up.
3. Install [Node.js](https://nodejs.org/en/).
4. Install [Go](https://golang.org/dl/).
5. Install [Antibody](http://getantibody.github.io/) via ``curl -sfL git.io/antibody | sh -s - -b /usr/local/bin``.
6. Install [Atom](http://atom.io) and ``CMD+SHIFT+P`` to ``Window: Install shell commands``.
7. Download dotfiles repository recursively and [install](#install).

## Install

I also use [DotBot](https://github.com/anishathalye/dotbot) to apply appropriate symlinks so that I can keep the original files in this one dotfiles dir. Look [here](https://raw.githubusercontent.com/0-vortex/dotfiles/master/.install.conf.yaml) for what it will exactly do. Place this cloned dotfiles repo in `~/.dotfiles/` and run `./install` inside it.

```bash
git clone --recurse-submodules -j4  git@github.com:0-vortex/dotfiles.git .dotfiles
cd .dotfiles
./install
```

## Zsh

I am using [Zsh](http://www.zsh.org) as my shell and [Antibody](https://github.com/getantibody/antibody) to install all my Zsh plugins. For terminal I use [iTerm3](https://www.iterm2.com) with [SpaceDust](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Spacedust.itermcolors) color scheme and [12pt Meslo LG S Regular for Powerline](https://github.com/powerline/fonts/tree/master/Meslo%20Slashed) font.

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

# :rocket: :construction: My configuration files for macOS [![GitHub License](https://img.shields.io/github/license/0-vortex/vortex.name.svg)](https://github.com/0-vortex/vortex.name/blob/master/LICENSE)  

> ZSH, JetBrains, Atom

These dotfiles are the various configuration files I use on macOS.

##### Contents

- [General Overview](#general-overview)
- [System Preferences](#system-preferences)
- [Requirements](#requirements)
- [Install](#install)
- [iTerm3](#iterm3)
- [Atom](#atom)
- [Zsh](#zsh)
  - [Aliases and functions](#aliases-and-functions)
- [Interesting dotfiles](#interesting-dotfiles)
- [Contributing](#contributing)

## General Overview

## Terminal - iTerm3

![iTerm3](static/iterm.png)

## Text Editor - Atom

![Atom](static/atom.png)

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
2. Go through [system preferences](#system-preferences) and set everything up.
3. Install [GPG Suite](https://gpgtools.org).
4. Install [Keybase](https://keybase.io).
5. Install [Node.js](https://nodejs.org/en/).
6. Install [Go](https://golang.org/dl/).
7. Install [Antibody](http://getantibody.github.io/) via ``curl -sfL git.io/antibody | sh -s - -b /usr/local/bin``.
8. Install [Atom](http://atom.io) and ``CMD+SHIFT+P`` to ``Window: Install shell commands``.
9. Download dotfiles repository recursively and [install](#install).

## Install

Optionally import Keybase gpg key into gpg tools for signed commits (replace keyname with the returned key from list secret keys)

```bash
keybase pgp export --secret | gpg --allow-secret-key --import
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export keyname | pbcopy
```

I also use [DotBot](https://github.com/anishathalye/dotbot) to apply appropriate symlinks so that I can keep the original files in this one dotfiles dir. Look [here](https://raw.githubusercontent.com/0-vortex/dotfiles/master/.install.conf.yaml) for what it will exactly do. Place this cloned dotfiles repo in `~/.dotfiles/` and run `./install` inside it.

```bash
git clone --recurse-submodules -j4  git@github.com:0-vortex/dotfiles.git .dotfiles
cd .dotfiles
./install
```

## iTerm3

Head over to [iterm color scheme]() and pick your favorites. My handpicked list of themes I am keeping installed is:

#### [Argonaut](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Argonaut.itermcolors)
![Argonaut](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/argonaut.png)

#### [Atom](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Atom.itermcolors)
![Atom](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/atom.png)

#### [Belafonte Night](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Belafonte%20Night.itermcolors)
![Belafonte Night](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/belafonte_night.png)

#### [Bright Lights](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Bright%20Lights.itermcolors)
![Bright Lights](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/bright_lights.png)

#### [Dark+](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Dark%2B.itermcolors)
![Dark+](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/dark_plus.png)

#### [Flatland](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Flatland.itermcolors)
![Flatland](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/flatland.png)

#### [Floraverse](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Floraverse.itermcolors)
![Floraverse](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/floraverse.png)

#### [Glacier](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Glacier.itermcolors)
![Glacier](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/glacier.png)

#### [Hacktober](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Hacktober.itermcolors)
![Hacktober](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/hacktober.png)

#### [Hardcore](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Hardcore.itermcolors)
![Hardcore](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/hardcore.png)

#### [Harper](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Harper.itermcolors)
![Harper](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/harper.png)

#### [LiquidCarbonTransparent](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/LiquidCarbonTransparent.itermcolors)
![LiquidCarbonTransparent](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/liquid_carbon_transparent.png)

#### [MaterialDark](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/MaterialDark.itermcolors)
![MaterialDark](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/material_dark.png)

#### [MaterialOcean](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/MaterialOcean.itermcolors)
![MaterialOcean](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/material_ocean.png)

#### [Monokai Soda](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Monokai%20Soda.itermcolors)
![Monokai Soda](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/monokai_soda.png)

#### [Monokai Vivid](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Monokai%20Vivid.itermcolors)
![Monokai Vivid](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/monokai_vivid.png)

#### [Neutron](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Neutron.itermcolors)
![Neutron](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/neutron.png)

#### [OceanicMaterial](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/OceanicMaterial.itermcolors)
![OceanicMaterial](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/oceanic_material.png)

#### [Operator Mono Dark](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Operator%20Mono%20Dark.itermcolors)
![Operator Mono Dark](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/operator_mono_dark.png)

#### [PaulMillr](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/PaulMillr.itermcolors)
![PaulMillr](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/paul_millr.png)

#### [Pro](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Pro.itermcolors)
![Pro](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/pro.png)

#### [Red Planet](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Red%20Planet.itermcolors)
![Red Planet](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/red_planet.png)

#### [Royal](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Royal.itermcolors)
![Royal](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/royal.png)

#### [SeaShells](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/SeaShells.itermcolors)
![SeaShells](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/sea_shells.png)

#### [Seti](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Seti.itermcolors)
![Seti](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/seti.png)

#### [Spacedust](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Spacedust.itermcolors)
![Spacedust](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/spacedust.png)

#### [SpaceGray Eighties](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/SpaceGray%20Eighties.itermcolors)
![SpaceGray Eighties](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/spacegray_eighties.png)

#### [SpaceGray Eighties Dull](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/SpaceGray%20Eighties%20Dull.itermcolors)
![SpaceGray Eighties Dull](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/spacegray_eighties_dull.png)

#### [Symfonic](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Symfonic.itermcolors)
![Symfonic](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/symfonic.png)

#### [Tomorrow Night Bright](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/schemes/Tomorrow%20Night%20Bright.itermcolors)
![Tomorrow Night Bright](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/tomorrow_night_bright.png)

#### [UnderTheSea](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/UnderTheSea.itermcolors)
![UnderTheSea](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/under_the_sea.png)

#### [VibrantInk](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/VibrantInk.itermcolors)
![VibrantInk](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/vibrant_ink.png)

#### [Wez](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/Wez.itermcolors)
![Wez](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/wez.png)

#### [ayu](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/ayu.itermcolors)
![ayu](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/ayu.png)

#### [lovelace](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/lovelace.itermcolors)
![lovelace](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/LoveLace.png)

#### [synthwave](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/schemes/synthwave.itermcolors)
![synthwave](https://github.com/mbadolato/iTerm2-Color-Schemes/raw/master/screenshots/synthwave.png)

## Zsh

I am using [Zsh](http://www.zsh.org) as my shell and [Antibody](https://github.com/getantibody/antibody) to install all my Zsh plugins. For terminal I use [iTerm3](https://www.iterm2.com) with [SpaceDust](https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Spacedust.itermcolors) color scheme and [12pt Meslo LG S Regular for Powerline](https://github.com/powerline/fonts/tree/master/Meslo%20Slashed) font.

### Aliases and functions

I use some aliases to get around my system as fast as possible. You can view them all [here](zsh/alias.zsh).

## Interesting dotfiles

My dotfiles are heavily inspired by:

- [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
- [wilsonmar/dotfiles](https://wilsonmar.github.io/dotfiles/#launchpad-dashboard)
- [lee-dohm/dotfiles](https://github.com/lee-dohm/dotfiles)
- [nikitavoloboev/dotfiles](https://github.com/nikitavoloboev/dotfiles)
- [rix1/dotfiles](https://github.com/rix1/dotfiles)
- [audibleblink/dotbot](https://github.com/audibleblink/dotbot)

## Contributing

[Suggestions](../../issues/) on how I can improve the structure of these dotfiles as well as suggesting new and awesome tools are welcome.

## Thank you

[![Twitter](https://bit.ly/2K9PC8q)](https://twitter.com/0_vortex)

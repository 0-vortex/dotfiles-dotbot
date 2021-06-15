# 0-vortex/dotfiles   

[![docs](https://github.com/0-vortex/dotfiles/actions/workflows/docs.yml/badge.svg)](https://github.com/0-vortex/dotfiles/actions/workflows/docs.yml)
 [![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
 [![GitHub License](https://img.shields.io/github/license/0-vortex/vortex.name.svg)](https://github.com/0-vortex/vortex.name/blob/master/LICENSE)

> Configuration: [zsh](http://www.zsh.org), [antibody](https://github.com/getantibody/antibody), [pkgsrc](https://www.pkgsrc.org)
> 
> Package managers: [pip](https://pip.pypa.io/en/stable/user_guide/), [npm](https://docs.npmjs.com/about-npm), [cargo](https://doc.rust-lang.org/cargo/), [go](https://github.com/golang/go/wiki/Modules)
>
> Submodules: [dotbot](https://github.com/anishathalye/dotbot), [powerline](https://github.com/powerline/fonts), [git-extras](https://github.com/tj/git-extras), [git-quick-stats](https://github.com/arzzen/git-quick-stats), [iterm-color-schemes](https://github.com/mbadolato/iTerm2-Color-Schemes)

## Overview

Just want to give it a spin in a sandbox?

```shell
docker run -dit --rm --name dotfiles 0vortex/dotfiles 
docker exec -it dotfiles zsh
```

<details>
  <summary>This is how a full install on a mac should look like</summary>

[![asciicast](https://asciinema.org/a/414072.svg)](https://asciinema.org/a/414072)

</details>

<details>
  <summary>Terminal: <a href="https://www.iterm2.com">iTerm3</a> with <a href="https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/ayu.itermcolors">ayu</a> theme (managed configuration on macOS)</summary>

![iTerm3](screenshots/iterm.png)

</details>

<details>
  <summary>Text Editor: <a href="https://atom.io/beta">Atom beta</a> with <a href="https://github.com/cpsdqs/dash-ui">dash-ui</a> theme (managed plugins on macOS)</summary>

![Atom](screenshots/atom.png)

</details>

<details>
  <summary>Co-working: <a href="https://code.visualstudio.com/insiders/">VSC Insiders</a> with <a href="https://www.nordtheme.com">Nord</a> theme (unmanaged)</summary>

![VSC Insiders](screenshots/vscode.png)

</details>

<details>
  <summary>IDE: <a href="https://www.jetbrains.com/webstorm/">WebStorm</a> with <a href="https://www.nordtheme.com">Nord</a> theme (unmanaged)</summary>

![WebStorm](screenshots/webstorm.png)

</details>

## Batteries included

### User installed packages

- [powerline fonts](https://github.com/powerline/fonts)
- [JetBrains Mono font](https://github.com/JetBrains/JetBrainsMono)
- [git-extras](https://github.com/tj/git-extras)
- [neofetch](https://github.com/dylanaraps/neofetch)
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [antibody](https://github.com/getantibody/antibody)

### GNU/BSD packages

- [bc-gh](https://cdn.netbsd.org/pub/pkgsrc/current/pkgsrc/math/bc-gh/index.html)
- [curl](https://cdn.netbsd.org/pub/pkgsrc/current/pkgsrc/www/curl/index.html)
- [gmake](https://cdn.netbsd.org/pub/pkgsrc/current/pkgsrc/devel/gmake/index.html)
- [gnuls](https://cdn.netbsd.org/pub/pkgsrc/current/pkgsrc/misc/gnuls/index.html)
- [gnupg](https://cdn.netbsd.org/pub/pkgsrc/current/pkgsrc/security/gnupg/index.html)
- [watchman](https://cdn.netbsd.org/pub/pkgsrc/current/pkgsrc/sysutils/watchman/index.html)
- [weechat](https://cdn.netbsd.org/pub/pkgsrc/current/pkgsrc/chat/weechat/index.html)

### Python user modules

- [asciinema](https://github.com/asciinema/asciinema)
- [dnstwist](https://github.com/elceef/dnstwist)
- [git-fame](https://github.com/casperdcl/git-fame) - `git fame`

<details>
  <summary>Darwin only</summary>

- [git-filter-repo](https://github.com/newren/git-filter-repo) - `git filter-repo`
- [httpie](https://github.com/httpie/httpie) - `http -v`
- [terraform-compliance](https://github.com/terraform-compliance/cli)
- [tqdm](https://github.com/tqdm/tqdm)
- [sublist3r](https://github.com/aboul3la/Sublist3r)
- [wafw00f](https://github.com/EnableSecurity/wafw00f)

</details>

### Node global packages

- [commitizen](https://www.npmjs.com/package/commitizen)
- [depcheck](https://www.npmjs.com/package/depcheck)
- [envinfo](https://www.npmjs.com/package/envinfo)
- [git-recent](https://www.npmjs.com/package/git-recent)
- [git-standup](https://www.npmjs.com/package/git-standup)
- [git-split-diffs](https://www.npmjs.com/package/git-split-diffs)
- [how-2](https://www.npmjs.com/package/how-2)
- [localtunnel](https://www.npmjs.com/package/localtunnel)
- [n](https://www.npmjs.com/package/n)
- [npm-check-updates](https://www.npmjs.com/package/npm-check-updates)
- [npkill](https://www.npmjs.com/package/npkill)
- [ntl](https://www.npmjs.com/package/ntl) 
- [quicktype](https://www.npmjs.com/package/quicktype)

<details>
  <summary>Darwin only</summary>

- [api-spec-converter](https://www.npmjs.com/package/api-spec-converter)
- [caniuse-cmd](https://www.npmjs.com/package/caniuse-cmd)
- [catj](https://www.npmjs.com/package/catj)
- [code-to-graph](https://www.npmjs.com/package/code-to-graph)
- [cz-conventional-changelog](https://www.npmjs.com/package/cz-conventional-changelog)
- [diff-so-fancy](https://www.npmjs.com/package/diff-so-fancy)
- [dree](https://www.npmjs.com/package/dree)
- [eslint](https://www.npmjs.com/package/eslint)
- [fx](https://www.npmjs.com/package/fx)
- [http-server](https://www.npmjs.com/package/http-server)
- [jsnice](https://www.npmjs.com/package/jsnice)
- [madge](https://www.npmjs.com/package/madge)
- [openapi-to-graphql-cli](https://www.npmjs.com/package/openapi-to-graphql-cli)
- [percollate](https://www.npmjs.com/package/percollate)
- [serve](https://www.npmjs.com/package/serve)
- [standard-changelog](https://www.npmjs.com/package/standard-changelog)
- [tldr](https://www.npmjs.com/package/tldr)
- [unminify](https://www.npmjs.com/package/unminify)

</details>

### Rust global packages

- [exa](https://crates.io/crates/exa)
- [fd-find](https://crates.io/crates/fd-find)
- [ripgrep](https://crates.io/crates/ripgrep)

<details>
  <summary>Darwin only</summary>

- [ripgrep](https://crates.io/crates/ripgrep)
- [dotenv-linter](https://crates.io/crates/dotenv-linter)

</details>

### Go global packages

- [glow](https://pkg.go.dev/github.com/charmbracelet/glow)
- [image2ascii](https://pkg.go.dev/github.com/qeesung/image2ascii)

<details>
  <summary>Darwin only</summary>

- [lazydocker](https://pkg.go.dev/github.com/jesseduffield/lazydocker)
- [lazygit](https://pkg.go.dev/github.com/jesseduffield/lazygit)
- [bat](https://pkg.go.dev/github.com/astaxie/bat)
- [httpx](https://pkg.go.dev/github.com/projectdiscovery/httpx)
- [subfinder](https://pkg.go.dev/github.com/projectdiscovery/subfinder)

</details>

## Requirements

1. Install [Xcode](https://developer.apple.com/xcode/) and run ``xcode-select --install``
1. Download [Python](https://www.python.org), [Node.js](https://nodejs.org/en/), [Go](https://golang.org/dl/) and [Rust](https://www.rust-lang.org/) via ``curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh``
1. Install [Antibody](http://getantibody.github.io/) via ``sudo sh -s -c "$(curl -sfL git.io/antibody)" - -b /usr/local/bin``
1. Install [Atom](http://atom.io) and ``CMD+SHIFT+P`` to ``Window: Install shell commands``
1. Optional, install [GPG Suite](https://gpgtools.org)
1. Optional, Install [KeyBase](https://keybase.io)

## Installation

Clone the package via git:

```shell
# macOS
git clone --recurse-submodules -j4 git@github.com:0-vortex/dotfiles.git .dotfiles
cd .dotfiles
./install
```

## How to use

If you are on linux, do `lsb_release` and then duplicate or rename [debian.conf.yaml](./os/debian.conf.yaml) 
and populate it with your settings. 

### Make it your own

Make appropriate `git` to the [config/git/.gitconfig](./config/git/.gitconfig) and [config/git/.gitignore_global](./config/git/.gitignore_global) files.

Change `npm` registry username in the [config/node/.npmrc-global](./config/node/.npmrc-global) file.

Enable or disable [macOS defaults](./defaults) folder.

Any changes mentioned above will need reflection in [install.conf.yaml](./install.conf.yaml).

### Set up GPG and commit signing

Copy over your `~/.ssh` folder.

Optionally import Keybase gpg key into gpg tools for signed commits (replace keyname with the returned key from list secret keys)

```shell
keybase pgp export --secret | gpg --allow-secret-key --import
gpg --list-secret-keys --keyid-format LONG
gpg --armor --export keyname | pbcopy
```

## Dockerize your fork

Assuming you are happy with your fork and just want to show it off, 
change the following to your `docker` username and just ship it. 

```shell
docker build . --squash -t 0vortex/dotfiles
docker push -a 0vortex/dotfiles
```

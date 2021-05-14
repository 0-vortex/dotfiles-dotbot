FROM debian:bullseye-slim AS base

MAINTAINER TED Vortex <ted.vortex@gmail.com>

ARG username=vortex

WORKDIR /

# update debian packages
RUN \
  apt update &&\
  apt -y upgrade &&\
  apt-get clean

# install os tooling dependencies
RUN \
  apt install -y build-essential &&\
  apt install -y curl &&\
  apt install -y fonts-powerline &&\
  apt install -y fonts-jetbrains-mono &&\
  apt install -y git &&\
  apt install -y git-extras &&\
  apt install -y git-quick-stats &&\
  apt install -y gnupg &&\
  apt install -y neofetch &&\
  apt install -y zsh &&\
  apt install -y wget

FROM base AS toolchain
# install antibody 6.1.1
RUN \
  curl -fsLS git.io/antibody | sh -s - -b /usr/local/bin

# install python 3.9.2
RUN \
  apt install -y python3 &&\
  apt install -y python3-pip

# install nodejs 14.16.1 and npm 7.12.0
RUN \
  curl --proto '=https' --tlsv1.2 -fsLS https://deb.nodesource.com/setup_14.x | sh - &&\
  apt install -y nodejs &&\
  npm install --global npm

# install go 1.15.9
RUN \
  apt install -y golang

# add user, create home folder set zsh $SHELL
RUN useradd -ms /bin/zsh $username
RUN chown -R $username:$username /home/$username
RUN chsh -s /usr/bin/zsh $username
RUN rm -rf /etc/profile.d

USER $username
WORKDIR /home/$username/

# install rustc 1.48 and cargo 1.46.0
RUN \
  curl --proto '=https' --tlsv1.2 -fsLS https://sh.rustup.rs | sh -s -- -y --no-modify-path

ENV PATH="/home/$username/.cargo/bin:${PATH}"

COPY --chown=$username:$username . .dotfiles

FROM toolchain AS dotfiles

RUN \
  ./.dotfiles/install -c install.conf.debian.yaml

CMD ["/usr/bin/zsh", "-l"]

ENTRYPOINT tail -f /dev/null

FROM debian:bullseye-slim AS debian

MAINTAINER TED Vortex <ted.vortex@gmail.com>
ARG username=vortex
WORKDIR /

RUN \
  apt update &&\
  apt -y upgrade &&\
  apt clean &&\
  apt install -y --no-install-recommends\
    build-essential\
    curl\
    git\
    gnupg\
    sudo\
    zsh\
    fonts-powerline\
    fonts-jetbrains-mono\
    git-extras\
    git-quick-stats\
    neofetch\
    python3\
    python3-pip\
    golang \
    && curl --proto '=https' --tlsv1.2 -fsLS https://deb.nodesource.com/setup_14.x | sh -\
    && apt install -y nodejs\
    && npm install --global npm \
    && rm -rf /var/lib/apt/lists/*

RUN \
  useradd -ms /usr/bin/zsh $username &&\
  echo "$username ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$username &&\
  chmod 0440 /etc/sudoers.d/$username &&\
  chown -R $username:$username /home/$username &&\
  rm -rf /etc/profile.d

USER $username
WORKDIR /home/$username/

RUN curl --proto '=https' --tlsv1.2 -fsLS https://sh.rustup.rs | sh -s -- -y --no-modify-path --profile minimal
ENV PATH="/home/$username/.cargo/bin:${PATH}"

COPY --chown=$username:$username . .dotfiles

RUN \
  ./.dotfiles/install

CMD ["/usr/bin/zsh", "-l"]

ENTRYPOINT tail -f /dev/null

FROM ubuntu:hirsute AS ubuntu

MAINTAINER TED Vortex <ted.vortex@gmail.com>
ARG username=vortex
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /

RUN \
  apt update &&\
  apt -y upgrade &&\
  apt clean &&\
  apt install -y --no-install-recommends\
    build-essential\
    curl\
    git\
    gnupg\
    sudo\
    zsh\
    fonts-powerline\
    fonts-jetbrains-mono\
    git-extras\
    git-quick-stats\
    neofetch\
    python3\
    python3-pip\
    golang \
    && curl --proto '=https' --tlsv1.2 -fsLS https://deb.nodesource.com/setup_14.x | sh -\
    && apt install -y nodejs\
    && npm install --global npm \
    && rm -rf /var/lib/apt/lists/*

RUN \
  useradd -ms /usr/bin/zsh $username &&\
  echo "$username ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$username &&\
  chmod 0440 /etc/sudoers.d/$username &&\
  chown -R $username:$username /home/$username &&\
  rm -rf /etc/profile.d

USER $username
WORKDIR /home/$username/

RUN curl --proto '=https' --tlsv1.2 -fsLS https://sh.rustup.rs | sh -s -- -y --no-modify-path --profile minimal
ENV PATH="/home/$username/.cargo/bin:${PATH}"

COPY --chown=$username:$username . .dotfiles

RUN \
  ./.dotfiles/install

CMD ["/usr/bin/zsh", "-l"]

ENTRYPOINT tail -f /dev/null

FROM alpine:3.13 as alpine

MAINTAINER TED Vortex <ted.vortex@gmail.com>
ARG username=vortex
WORKDIR /

RUN \
  apk update &&\
  apk add --update\
    curl\
    git\
    gnupg\
    make\
    sudo\
    zsh\
    zsh-vcs\
    neofetch\
    python3\
    py3-pip\
    go\
    nodejs-current\
    npm\
  && rm -rf /var/cache/apk/*

RUN \
  adduser -Ds /bin/zsh "${username}" $username &&\
  echo "$username ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$username &&\
  chmod 0440 /etc/sudoers.d/$username &&\
  chown -R $username:$username /home/$username &&\
  rm -rf /etc/profile.d

USER $username
WORKDIR /home/$username/

RUN curl --proto '=https' --tlsv1.2 -fsLS https://sh.rustup.rs | sh -s -- -y --no-modify-path --profile minimal
ENV PATH="/home/$username/.cargo/bin:${PATH}"

COPY --chown=$username:$username . .dotfiles

RUN \
  ./.dotfiles/install

CMD ["/usr/bin/zsh", "-l"]

ENTRYPOINT tail -f /dev/null

FROM archlinux:latest as arch

MAINTAINER TED Vortex <ted.vortex@gmail.com>
ARG username=vortex
WORKDIR /

RUN \
  pacman -Syu --noconfirm &&\
  pacman -Sy --noconfirm\
    base-devel\
    curl\
    git\
    gnupg\
    cmake\
    sudo\
    zsh\
    neofetch\
    python3\
    python-pip\
    go\
    nodejs\
    npm\
  && rm -rf /var/cache/pacman/pkg/*

ENV TZ=America/Los_Angeles

RUN \
  useradd -ms /usr/bin/zsh $username &&\
  echo "$username ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$username &&\
  chmod 0440 /etc/sudoers.d/$username &&\
  chown -R $username:$username /home/$username &&\
  rm -rf /etc/profile.d &&\
  ln -snf /usr/share/zoneinfo/$TZ /etc/localtime &&\
  echo $TZ > /etc/timezone

USER $username
WORKDIR /home/$username/

RUN curl --proto '=https' --tlsv1.2 -fsLS https://sh.rustup.rs | sh -s -- -y --no-modify-path --profile default
ENV PATH="/home/$username/.cargo/bin:${PATH}"

COPY --chown=$username:$username . .dotfiles

RUN \
  ./.dotfiles/install

CMD ["/usr/bin/zsh", "-l"]

ENTRYPOINT tail -f /dev/null

FROM debian:bullseye-slim AS base

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
    neofetch

RUN \
  apt install -y --no-install-recommends\
    python3\
    python3-pip\
    golang \
    && curl --proto '=https' --tlsv1.2 -fsLS https://deb.nodesource.com/setup_14.x | sh -\
    && apt install -y nodejs\
    && npm install --global npm \
    && curl -fsLS git.io/antibody | sh -s - -b /usr/local/bin \
    && rm -rf /var/lib/apt/lists/*

RUN \
  useradd -ms /usr/bin/zsh $username &&\
  usermod -aG sudo $username &&\
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

#!/bin/bash

if [ ! -d /opt/pkg ]; then
  #
  # Copy and paste the lines below to install the Big Sur set.
  #
  # These packages are suitable for anyone running Big Sur x86 (11.0.x) or newer,
  # and are updated from pkgsrc trunk every few days.
  #
  BOOTSTRAP_TAR="bootstrap-macos11-trunk-x86_64-20201105.tar.gz"
  BOOTSTRAP_SHA="737ce40a4e30127813bf9e84b085a335e0558ada"

  # Download the bootstrap kit to the current directory.
  curl -O https://pkgsrc.joyent.com/packages/Darwin/bootstrap/${BOOTSTRAP_TAR}

  # Verify the SHA1 checksum.
  echo "${BOOTSTRAP_SHA} ${BOOTSTRAP_TAR}" > check-shasum
  shasum -c check-shasum

  # Verify PGP signature.  This step is optional, and requires gpg.
  curl -O https://pkgsrc.joyent.com/packages/Darwin/bootstrap/${BOOTSTRAP_TAR}.asc
  curl -sS https://pkgsrc.joyent.com/pgp/1F32A9AD.asc | gpg2 --import
  gpg2 --verify ${BOOTSTRAP_TAR}{.asc,}

  # Install bootstrap kit to /opt/pkg
  sudo tar -zxpf ${BOOTSTRAP_TAR} -C /

  # Reload PATH/MANPATH (pkgsrc installs /etc/paths.d/10-pkgsrc for new sessions)
  eval $(/usr/libexec/path_helper)

  rm check-shasum
  rm ${BOOTSTRAP_TAR}{.asc,}
else
  echo "pkgsrc already installed"
fi

#!/bin/bash -e

on_chroot << EOF
cd /home/${FIRST_USER_NAME}
pwd

# see https://github.com/openthread/ot-br-posix/blob/main/etc/docker/Dockerfile

# Required and installed during build (script/bootstrap), could be removed
export OTBR_BUILD_DEPS=" \
  apt-utils build-essential psmisc ninja-build cmake wget ca-certificates \
  libreadline-dev libncurses-dev libcpputest-dev libdbus-1-dev libavahi-common-dev \
  libavahi-client-dev libboost-dev libboost-filesystem-dev libboost-system-dev \
  libnetfilter-queue-dev \
"


# Required and installed during build (script/bootstrap) when RELEASE=1, could be removed
export "OTBR_NORELEASE_DEPS=" \
  cmake \
  cpputest \
  doxygen \
"

# mv ./script /tmp
# mv ./etc /tmp
# find . -delete
# rm -rf /usr/include
# mv /tmp/script .
# mv /tmp/etc .

# apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $OTBR_BUILD_DEPS
# apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $OTBR_NORELEASE_DEPS

# rm -rf /var/lib/apt/lists/* 


EOF

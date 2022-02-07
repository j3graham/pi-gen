#!/bin/bash -e

on_chroot << EOF

cd /home/${FIRST_USER_NAME}
pwd

git clone --depth 1 https://github.com/openthread/ot-br-posix.git
cd ot-br-posix
./script/bootstrap
INFRA_IF_NAME=eth0 ./script/setup

EOF

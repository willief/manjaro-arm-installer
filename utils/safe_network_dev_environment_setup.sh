#!/bin/sh

pacman -Syyuu base-devel netcat net-tools neovim git npm rustup docker
ln -s /bin/nvim /bin/vim
groupadd docker
usermod -aG docker ${SUDO_USER}
systemctl enable docker
systemctl start docker
runuser -l ${SUDO_USER} rustup toolchain install stable

exit

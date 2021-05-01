FROM manjarolinux/base:latest
LABEL version="0.1"
LABEL maintainer="Folaht"
LABEL release-date="2021-04-31"

# Install keyrings and refresh keys
RUN yes | pacman -Sy archlinux-keyring manjaro-keyring
RUN pacman-key --init
RUN pacman-key --populate archlinux
RUN pacman-key --populate manjaro
RUN pacman-key --refresh-keys

# Update Manjaro Linux OS
RUN pacman -Sc
RUN yes | pacman -Syyuu
RUN pacman-mirrors --fasttrack

# Install dependencies
RUN yes | pacman -S btrfs-progs

# Install Manjaro Arm Installer
RUN yes | pacman -S manjaro-arm-installer

# Run command on Docker launch
CMD ["/usr/bin/manjaro-arm-installer"]

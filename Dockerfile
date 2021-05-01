FROM manjarolinux/base:latest
LABEL version="0.1"
LABEL maintainer="Folaht"
LABEL release-date="2021-04-31"

# Update Manjaro Linux OS and Install dependencies
RUN yes | pacman -Syu btrfs-progs

# Install Manjaro Arm Installer
RUN yes | pacman -S manjaro-arm-installer

# Run command on Docker launch
CMD ["/usr/bin/manjaro-arm-installer"]

FROM manjarolinux/base:latest
LABEL version="1.0"
LABEL maintainer="Folaht"
LABEL release-date="2021-07-19"

# Update Manjaro Linux OS and Install dependencies
RUN pacman --noconfirm -Syu btrfs-progs

# Install Manjaro Arm Installer
RUN pacman --noconfirm -S manjaro-arm-installer

# Run command on Docker launch
CMD ["manjaro-arm-installer"]

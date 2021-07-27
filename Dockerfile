FROM manjarolinux/base:latest
LABEL version="1.0"
LABEL maintainer="Folaht"
LABEL release-date="2021-07-19"

# Synchronize Manjaro Linux OS 
RUN pacman -Sy

# Install dependencies
RUN pacman --noconfirm -S btrfs-progs

# Install Manjaro Arm Installer
RUN pacman --noconfirm -S manjaro-arm-installer

# Run command on Docker launch]


CMD ["sudo su -"]

CMD ["manjaro-arm-installer"]

#!/bin/bash
# @author: Kakise
# @desc: This script needs to be run after the first install of neverware cloudready
# DO NOT RUN USING SUDO
# You need to have a writeable rootfs before running this script.

# Change the working directory
cd ~/Downloads
mkdir CodeWorkspace

# Install chromebrew
curl -Ls git.io/vddgY | bash

# Install wget & nano
crew install wget
crew install nano

# Install several utilities from flatpak
flatpak install flathub com.discordapp.Discord
flatpak install flathub com.visualstudio.code
flatpak install flathub com.valvesoftware.Steam
flatpak install flathub com.spotify.Client

# Auto start docker
sudo touch /home/chronos/.enable_docker_service
sudo start docker

# Install clang
sudo docker pull rsmmr/clang
sudo mount -o rw,remount /
sudo usermod -a -G docker $USER # Fixes permissions
sudo docker run -it -v /home/chronos/user/Downloads/CodeWorkspace:/Code -w /Code --name clang rsmmr/clang

# Install kdev daemon
chmod +x kdev-daemon.conf # Ensure it can be executed
sudo cp kdev-daemon.conf /etc/init/kdev-daemon.conf
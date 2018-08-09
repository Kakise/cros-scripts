#!/bin/bash
# @author: Kakise
# @desc: This script needs to be run after the first install of neverware cloudready

# Change the working directory
cd ~/Downloads

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

# Install clion
sudo docker build https://github.com/Kakise/cros-scripts.git#master:clion

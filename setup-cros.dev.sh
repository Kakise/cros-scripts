#!/bin/sh
# @author: Kakise
# @desc: This script remounts the home directory to allow executing scripts and program under CrOS's ~/Downloads directory.

sudo mount -o exec,remount /home
sudo mount -o exec,remount /home/chronos
sudo mount -o exec,remount -i /home/chronos/user

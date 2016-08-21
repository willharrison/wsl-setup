#!/bin/bash

apt-get update
apt-get upgrade
apt-get install -y xorg xfce4-terminal meld tmux fonts-inconsolata

fc-cache -fv

echo "export DISPLAY=:0.0" >> ~/.bashrc
echo "export TERM=xterm-256color" >> ~/.bashrc

sudo sed -i 's$<listen>.*</listen>$<listen>tcp:host=localhost,port=0</listen>$' /etc/dbus-1/session.conf


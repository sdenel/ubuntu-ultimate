#!/bin/bash -xe
export DEBIAN_FRONTEND=noninteractive

apt update && apt upgrade -y

apt install -y curl wget vim git htop openssh-client apt-utils

apt install -y jq # Nice to to play with json in your terminal
apt install -y htop # A must have replacement for top
apt install -y build-essential # gcc, g++, libc-dev, ...
apt install -y iputils-ping # ping
apt install -y dnsutils # dig, nslookup, nsupdate
apt install -y net-tools # arp, ifconfig, netstat, rarp, nameif et route

# Python + its package manager
apt install -y python3 python3-pip

# NodeJS + npm
wget -qO- https://deb.nodesource.com/setup_lts.x | bash -
apt install -y nodejs

# ZSH + Oh my ZSH
apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# TODO: some dependancies here might be interesting: https://github.com/sdenel/docker-ubuntu-kubectl/blob/master/Dockerfile
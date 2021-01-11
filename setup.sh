#!/bin/bash -xe
export DEBIAN_FRONTEND=noninteractive

apt update && apt upgrade -y

apt install -y curl wget vim git htop openssh-client apt-utils zip

apt install -y jq # Nice to to play with json in your terminal
apt install -y htop # A must have replacement for top
apt install -y build-essential # gcc, g++, libc-dev, ...
apt install -y iputils-ping # ping
apt install -y dnsutils # dig, nslookup, nsupdate
apt install -y net-tools # arp, ifconfig, netstat, rarp, nameif et route
apt install -y apache2-utils # htpasswd
apt install -y uuid-runtime # uuidgen

# Python + its package manager
apt install -y python3 python3-pip
pip3 install yq j2cli
# python -> bind to python
update-alternatives --install /usr/bin/python python /usr/bin/python3 1
update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# NodeJS + npm
wget -qO- https://deb.nodesource.com/setup_lts.x | bash -
apt install -y nodejs

# ZSH + Oh my ZSH
apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Ansible
apt install -y ansible
# Some useful collections
ansible-galaxy collection install ansible.posix

# TODO: some dependancies here might be interesting: https://github.com/sdenel/docker-ubuntu-kubectl/blob/master/Dockerfile

# AWS2 cli. See https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html#cliv2-linux-install
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install

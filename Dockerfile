FROM ubuntu:latest

export DEBIAN_FRONTEND=noninteractive

apt update
apt upgrade
apt install -y build-essentials curl wget vim python3 python3-pip git jq

pip3 install coverage

wget -qO- https://deb.nodesource.com/setup_lts.x | bash -
apt install -y nodejs

apt install -y zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#!/usr/bin/sh

export DEBIAN_FRONTEND="noninteractive"

apt-get update

curl -LO --silent https://github.com/neovim/neovim/releases/download/v0.7.0/nvim-linux64.deb
apt-get install -y ./nvim-linux64.deb

apt-get install -y golang-go python3-pip ripgrep fzf npm
pip3 install pynvim
npm i -g neovim

git clone https://github.com/charlyx/avatars-io.git
chown -R vagrant:vagrant /home/vagrant/avatars-io

git clone https://github.com/Tarektouati/dummy-deno-rest-api
chown -R vagrant:vagrant /home/vagrant/dummy-deno-rest-api

#curl -fLo /home/vagrant/.config/nvim/autoload/plug.vim --silent --create-dirs \
#    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#curl -fLo /home/vagrant/.config/nvim/init.vim --silent --create-dirs \
#    https://raw.githubusercontent.com/charlyx/vim-config/master/init.vim

git clone https://github.com/Tarektouati/nvim-config.git /home/vagrant/.config/nvim

chown -R vagrant:vagrant /home/vagrant/.config

#nvim '+PlugInstall' '+qall'

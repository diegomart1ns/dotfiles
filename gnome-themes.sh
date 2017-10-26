#!/bin/sh

sudo add-apt-repository ppa:papirus/papirus
sudo add-apt-repository ppa:numix/ppa
sudo apt update
sudo apt install -y libtool numix-gtk-theme papirus-icon-theme numix-icon-theme autoconf automake pkg-config libgtk-3-dev gnome-themes-standard gtk2-engines-murrine
git clone https://github.com/horst3180/arc-theme --depth 1
cd ./arc-theme
./autogen.sh --prefix=/usr
sudo make install
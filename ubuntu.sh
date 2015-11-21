#!/bin/bash

echo "Joel's Ubuntu Setup Script"

# VirtualBox goodies
while true; do
	read -p "Are you using a VirtualBox VM? [y/n]: " isVirtualBox
	case $isVirtualBox in
		[Yy]* ) apt-get -y install virtualbox-guest-dkms; break;;
		[Nn]* ) break;;
 		* ) echo "Please answer y or n.";;
	esac
done

# .bashrc
while true; do
    read -p "Do you want the .bashrc? [y/n]: " rc
    case $rc in
        [Yy]* ) cp .bashrc ~/; cp .bash_aliases ~/; break;;
        [Nn]* ) break;;
        * ) echo "Please answer y or n.";;
    esac
done

# .vim
while true; do
    read -p "Do you want the .vimrc? [y/n]: " rc
    case $rc in
        [Yy]* ) cp -r .vim/ ~/; cp .vimrc ~/; break;;
        [Nn]* ) break;;
        * ) echo "Please answer y or n.";;
    esac
done

# update upgrade dist-upgrade
while true; do
    read -p "Do you want to update/upgrade/dist-upgrade? [y/n]: " update
    case $update in
        [Yy]* ) apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; break;;
        [Nn]* ) break;;
        * ) echo "Please answer y or n.";;
    esac
done

# f.lux
while true; do
	read -p "Do you want f.lux and workrave? [y/n]: " flux
	case $flux in
		[Yy]* ) add-apt-repository ppa:kilian/f.lux && apt-get update && apt-get install fluxgui workrave; break;;
		[Nn]* ) break;;
		** ) echo "Please answer y or n.";;
	esac
done

# tree, sl, htop, xclip, vim, open in terminal
while true; do
	read -p "Do you want the essentials? [y/n]: " essentials
	case $essentials in
		[Yy]* ) apt-get install tree sl htop xclip vim nautilus-open-terminal; break;;
		[Nn]* ) break;;
 		* ) echo "Please answer y or n.";;
	esac
done

# Sublime Text 3
while true; do
	read -p "Do you want Sublime Text 3? [y/n]: " subl
	case $subl in
		[Yy]* ) add-apt-repository -y ppa:webupd8team/sublime-text-3 && sudo apt-get update && sudo apt-get install -y sublime-text-installer; break;;
		[Nn]* ) break;;
 		* ) echo "Please answer y or n.";;
	esac
done

# Media Essentials
while true; do
	read -p "Do you want the media essentials? [y/n]: " media
	case $media in
		[Yy]* ) apt-get install -y amarok vlc; break;;
		[Nn]* ) break;;
 		* ) echo "Please answer y or n.";;
	esac
done

# Java
while true; do
	read -p "Do you want java? [y/n]: " java
	case $java in
		[Yy]* ) apt-get install -y default-jdk; break;;
		[Nn]* ) break;;
 		* ) echo "Please answer y or n.";;
	esac
done

# Ruby
while true; do
	read -p "Do you want ruby? [y/n]: " ruby
	case $ruby in
		[Yy]* ) apt-get install -y ruby && apt-get install -y ruby-dev; break;;
		[Nn]* ) break;;
 		* ) echo "Please answer y or n.";;
	esac
done

# (Web) - Node.js, Bower, Grunt, Gulp, Yeoman
while true; do
	read -p "Do you want node and web essentials? [y/n]: " web
	case $web in
		[Yy]* ) apt-get install -y python-software-properties && apt-add-repository ppa:chris-lea/node.js && apt-get update && apt-get install -y nodejs && npm install -g bower; npm install -g grunt-cli; npm install -g gulp; npm install -g yo; break;;
		[Nn]* ) break;;
 		* ) echo "Please answer y or n.";;
	esac
done

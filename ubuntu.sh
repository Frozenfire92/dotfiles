#!/bin/bash

wantsToUpdate = false;
 
echo "Joel's Ubuntu Setup Script"

# VirtualBox goodies
while true; do
	read -p "Are you using a VirtualBox VM? [y/n]: " isVirtualBox
	case $isVirtualBox in
		[Yy]* ) apt-get install virtualbox-guest-dkms; break;;
		[Nn]* ) exit;;
 		* ) echo "Please answer y or n.";;
	esac
done

# .bashrc
while true; do
    read -p "Do you want the .bashrc? [y/n]: " rc
    case $rc in
        [Yy]* ) cp .bashrc ~/; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer y or n.";;
    esac
done

# update upgrade dist-upgrade
while true; do
    read -p "Do you want to update/upgrade/dist-upgrade? [y/n]: " update
    case $update in
        [Yy]* ) apt-get update; apt-get upgrade; apt-get dist-upgrade; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer y or n.";;
    esac
done

# tree, sl, htop, xclip
while true; do
	read -p "Do you want the essentials? [y/n]: " essentials
	case $essentials in
		[Yy]* ) apt-get install tree sl htop xclip; break;;
		[Nn]* ) exit;;
 		* ) echo "Please answer y or n.";;
	esac
done

# Sublime Text 3
while true; do
	read -p "Do you want Sublime Text 3? [y/n]: " subl
	case $subl in
		[Yy]* ) add-apt-repository -y ppa:webupd8team/sublime-text-3; sudo apt-get update; sudo apt-get install -y sublime-text-installer; break;;
		[Nn]* ) exit;;
 		* ) echo "Please answer y or n.";;
	esac
done

# Media Essentials
while true; do
	read -p "Do you want the media essentials? [y/n]: " media
	case $media in
		[Yy]* ) apt-get install amarok vlc; break;;
		[Nn]* ) exit;;
 		* ) echo "Please answer y or n.";;
	esac
done

# Java
while true; do
	read -p "Do you want java? [y/n]: " java
	case $java in
		[Yy]* ) apt-get install default-jdk; break;;
		[Nn]* ) exit;;
 		* ) echo "Please answer y or n.";;
	esac
done

# Ruby
while true; do
	read -p "Do you want ruby? [y/n]: " ruby
	case $ruby in
		[Yy]* ) apt-get install ruby ruby-dev; break;;
		[Nn]* ) exit;;
 		* ) echo "Please answer y or n.";;
	esac
done

# (Web) - Node.js, Bower, Grunt, Gulp, Yeoman
while true; do
	read -p "Do you want node and web essentials? [y/n]: " web
	case $web in
		[Yy]* ) add-apt-repository ppa:chris-lea/node.js; apt-get update; apt-get install nodejs npm; npm install -g bower; npm install -g grunt-cli; npm install -g gulp; npm install -g yo; break;;
		[Nn]* ) exit;;
 		* ) echo "Please answer y or n.";;
	esac
done

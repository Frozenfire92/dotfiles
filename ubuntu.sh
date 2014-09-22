#!/bin/bash
 
echo "Joel's Ubuntu Setup Script"

# Copy bash rc to home foler
cp .bashrc ~/

# Update
apt-get update

# Tree
apt-get install tree

# sl
apt-get install sl

#htop
apt-get install htop

#xclip
apt-get install xclip

# Ruby
apt-get install ruby

# Node.js
add-apt-repository ppa:chris-lea/node.js
sudo apt-get install nodejs

# Bower
npm install -g bower

# Grunt
npm install -g grunt-cli

# Gulp
npm install -g gulp

# Yeoman
npm install -g yo
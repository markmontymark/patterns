#!/bin/bash

## funcs

cmd_exists(){
	type "$1" &> /dev/null;
}

install_w_sudo_apt_get(){
	if cmd_exists $1 ; then
		echo "$1 installed"
	else
		echo "$1 not installed, attempting install now..."
		sudo apt-get install $1
	fi
}
install_w_sudo_npm_global(){
	if cmd_exists $1 ; then
		echo "$1 installed"
	else
		echo "$1 not installed, attempting install now..."
		sudo npm install -g $1
	fi
}



##
## main
##

cd $HOME

##
##  Clean up cruft from new vm
##  Remove empty dirs in $HOME - just going to be recreated on-demand by other apps anyway
##
rmdir *

##
## Base installs to init a $HOME dir for my dev for a new vm
## This comes from git and a node.io script that pulls down all my git repos
##

##
## install git, node, npm, node.io so we can get all git repos
##
install_w_sudo_apt_get git
install_w_sudo_apt_get nodejs
install_w_sudo_apt_get npm
install_w_sudo_npm_global node.io
install_w_sudo_npm_global coffee-script

## fixup, symlink nodejs to node if node doesn't exist
if cmd_exists nodejs && ! cmd_exists node ; then
	echo "have nodejs but don't have node, symlinking /usr/bin/nodejs to /usr/bin/node"
	sudo ln -s /usr/bin/nodejs /usr/bin/node
fi	


##
## create a projects/github/ dir and pull down all my repos there
##
mkdir -p projects/github
cd projects/github

if [ ! -d scripts ] ; then
	git clone https://github.com/markmontymark/scripts.git
else
	echo "already have scripts dir"
fi


#sudo npm link node.io
#echo "https://github.com/markmontymark" > urls.txt
#node\.io scripts/git-clone-all.coffee < urls.txt
##
##
echo "OK, easy tiger, lots of git clone is going on now, ps -efa | grep git clone"
echo "Wait till that's done"


##
## ET Home phone
##
cd $HOME


##
## install dev stuff
##
install_w_sudo_apt_get vim

##
## cp some dot files/dirs to $HOME
cp -pr projects/github/env/vim $HOME/.vim
cp projects/github/env/vimrc $HOME/.vimrc
mkdir $HOME/.vim/viminfo
echo >> $HOME/.bashrc
cat projects/github/env/bashfuncs >> $HOME/.bashrc

##
## install latest stable perl as a perlbrew
##
if [ -d perl5 ] ; then
	echo "Looks like we have a perlbrew already, skipping perlbrew download"
elif cmd_exists curl; then
	echo "would install perlbrew with curl download"
	curl -kL http://install.perlbrew.pl | bash
elif cmd_exists wget; then
	echo "would install perlbrew with wget download"
	wget --no-check-certificate -O - http://install.perlbrew.pl | bash
else
	echo "wont install perlbrew cant find wget or curl"
fi

echo >> $HOME/.bashrc
echo "source ~/perl5/perlbrew/etc/bashrc" >> $HOME/.bashrc
echo >> $HOME/.bashrc
setgithub

source ~/perl5/perlbrew/etc/bashrc

perlbrew init
perlbrew install stable
STABLEPERL=`ls $HOME/perl5/perlbrew/perls`
echo "Going to attempt to set perlbrew to version $STABLEPERL"
perlbrew switch $STABLEPERL
source ~/perl5/perlbrew/etc/bashrc
perl -v 

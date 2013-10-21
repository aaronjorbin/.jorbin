#!/bin/sh
$CURRENTDIR = `pwd`

# .bashrc
ln -sfnv ~/.jorbin/bashrc ~/.bashrc
source ~/.bashrc

ln -sfnv ~/.jorbin/ansiweatherrc ~/.ansiweatherrc

# get submodules
git submodule init
git submodule update

# ssh.conf
if [ -f ~/.jorbin/ssh/config ]
    then
    ln -sfnv ~/.jorbin/ssh/config ~/.ssh/config
fi

# vim
if [ -d ~/.jorbin/.vim ]
    rm -rf ~/.vim
    rm -rf ~/.vimrc

    then
    ln -sfnv ~/.jorbin/.vim ~/.vim
    ln -sfnv ~/.jorbin/.vim/vimrc ~/.vimrc
    cd ~/.vim
    mkdir tmp 
    git submodule init
    git submodule update
    cd $CURRENTDIR
fi

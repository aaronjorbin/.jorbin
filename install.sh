#!/bin/sh
$CURRENTDIR = `pwd`

# .bashrc
ln -sfnv ~/.jorbin/bashrc ~/.bashrc
source ~/.bashrc

# ssh.conf
if [ -f ~/.jorbin/ssh/config ]
    then
    ln -sfnv ~/.jorbin/ssh/config ~/.ssh/config
fi

# vim
if [ -d ~/.jorbin/.vim ]
    then
    ln -sfnv ~/.jorbin/.vim ~/.vim
    ln -sfnv ~/.jorbin/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule init
    git submodule update
    cd $CURRENTDIR
fi

#!/bin/bash
path=$(cd `dirname $0`; pwd)

echo "copy bashrc to "$HOME
cp $path/bashrc $HOME/.bashrc

echo "copy bash_profile to "$HOME
cp $path/bash_profile $HOME/.bash_profile

echo "copy vimrc to "$HOME
cp $path/vimrc $HOME/.vimrc
mkdir -p $HOME/backup/vim

echo "copy gitconfig to "$HOME
cp $path/gitconfig $HOME/.gitconfig

tar zxvf $path/godev.tar.gz -C $path/
if [ ! -d $HOME"/go/src" ];then
    mkdir -p $HOME/go/src
fi

cp -r $path/go/src/* $HOME/go/src

rm -rf $path/go
source $HOME/.bashrc
source $HOME/.bash_profile

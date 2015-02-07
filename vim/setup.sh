#!/bin/sh

CONFIG=`pwd`/dotvimrc
RCFILE=~/.vimrc

if [ -f $RCFILE ];
then
  mv $RCFILE $RCFILE.`date +%Y-%m-%d_%H:%M:%S`
fi
ln -s $CONFIG $RCFILE

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Done config vim, but you need to install the bundles in vim!"

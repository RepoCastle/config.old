#!/bin/sh

CONFIG=`pwd`/dotvimrc
RCFILE=~/.vimrc

if [ -f $RCFILE ];
then
  mv $RCFILE $RCFILE.`date +%Y-%m-%d_%H:%M:%S`
fi
ln -s $CONFIG $RCFILE


SCALA_DIST_URL=https://raw.githubusercontent.com/scala/scala-dist/master/tool-support/src/vim
mkdir -p ~/.vim/{ftdetect,indent,syntax} && for d in ftdetect indent syntax ; do curl -o ~/.vim/$d/scala.vim $SCALA_DIST_URL/$d/scala.vim; done

echo "au BufRead,BufNewFile *.thrift set filetype=thrift" >> ~/.vim/ftdetect/thrift.vim
curl -o ~/.vim/syntax/thrift.vim https://raw.githubusercontent.com/apache/thrift/master/contrib/thrift.vim;

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "Done config vim, but you need to install the bundles in vim!"

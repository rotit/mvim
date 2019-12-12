#!/bin/bash
CUR_DIR=$( pwd )
rm  ~/.vimrc 
rm  ~/.vimrc.bundles 
ln -sv $CUR_DIR/.vimrc ~/.vimrc 
ln -sv $CUR_DIR/.vimrc.bundles ~/.vimrc.bundles 

mkdir -p ~/.vim/syntax
cp hilightfunc/c.vim ~/.vim/syntax/
cp hilightfunc/cpp.vim ~/.vim/syntax/

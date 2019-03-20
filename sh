#!/bin/bash
CUR_DIR=$( pwd )
rm  ~/.vimrc 
rm  ~/.vimrc.bundles 
ln -sv $CUR_DIR/.vimrc ~/.vimrc 
ln -sv $CUR_DIR/.vimrc.bundles ~/.vimrc.bundles 

#cp hilightfunc/c.vim ~/.vim/synat
#cp hilightfunc/cpp.vim ~/.vim

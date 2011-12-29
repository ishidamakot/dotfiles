#!/bin/sh

abs_path=$(cd $(dirname $0) && pwd)/$(basename $0)
dotfiles_dir=$(dirname $abs_path)/files

for dotfile in `ls $dotfiles_dir`
do
  ln -Fis $dotfiles_dir/$dotfile $HOME/.${dotfile}
done

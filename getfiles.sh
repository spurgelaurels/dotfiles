#!/bin/bash
HOME=~

for OUTPUT in $(cat filelist)
do
  rsync -av -R --progress "$HOME/./$OUTPUT" ~/src/dotfiles/ --exclude .git 
  echo "copied $HOME/$OUTPUT to ~/src/dotfiles/$OUTPUT"
done

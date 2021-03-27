#!/bin/bash
HOME=~

for OUTPUT in $(cat filelist)
do
  rsync -av -R --progress "$HOME/./$OUTPUT" ~/src/dotfiles/ --exclude .git 
done

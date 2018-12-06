#!/bin/bash

#========================================
# Symlink all files in .dotfiles location 
# back to $USER directory
#========================================

clear

echo "  -> Symlink your files in ~/.dotfiles to user directory? [y/n]"

read input

if [ "$input" == "y" ] || [ "$input" == "Y" ]; then
  echo "  -> Processing..."
  for file in `ls /Users/sju0422/.dotfiles`; do 
    ln -s ~/.dotfiles/$file ~/.$file
  done
  echo "  -> Completed. Symlink created for all files."
elif [ "$input" == "n" ] || [ "$input" == "N" ]; then 
  echo "  -> 'No' selected, exited without processing."
else 
  echo "  -> Exited. Invalid input... $input <-"  
fi





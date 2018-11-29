#!/bin/bash

#=========================================
# Maintenance script for Homebrew. Runs 
# commands to keep it up to date and dumps
# old versions.
#=========================================

clear

echo "  -> Updating..."

brew update

echo "  -> Checking for outdated packages"

brew outdated

echo "  -> $USER, would you like to upgrade? [y/n]"

read input

if [ "$input" == "y" ] || [ "$input" == "Y" ]; then
  brew upgrade
else 
  echo "  -> Exited without upgrading Homebrew"
  exit
fi

echo "  -> Checking for old versions of formulae..."

brew cleanup -n

echo "  -> Remove old versions? [y/n]"

read input

if [ "$input" == "y" ] || [ "$input" == "Y" ]; then
  brew cleanup
  echo "  -> Homebrew Maintenance Completed."
else 
  echo "  -> Exited without removing old formula versions."
  exit
fi
#!/bin/bash

SCRIPTPATH="$(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")"
BASEDIR=`dirname "$SCRIPTPATH"`
BACKUPDIR=$BASEDIR/backup

function doIt() { 
  # Prepare backup directory
  if [ -d "$BACKUPDIR" ]; then
    rm -rf $BACKUPDIR/*
  
  else
    mkdir $BACKUPDIR
  fi
  

  if [ -d ~/.zsh ]; then
    mv ~/.zsh $BACKUPDIR
  fi
  ln -f -s $BASEDIR/zsh ~/.zsh

  if [ -d ~/.bash ]; then
    mv ~/.bash $BACKUPDIR
  fi
  ln -f -s $BASEDIR/bash ~/.bash


  if [ -a ~/.zshrc ]; then
    mv ~/.zshrc $BACKUPDIR
  fi
  ln -f -s $BASEDIR/zsh/zshrc ~/.zshrc
  
  if [ -a ~/.bashrc ]; then
    mv ~/.bashrc $BACKUPDIR
  fi
  ln -f -s $BASEDIR/bash/bashrc ~/.bashrc

  if [ -a ~/.tmuxrc ]; then
    mv ~/.tmuxrc $BACKUPDIR
  fi
  ln -f -s $BASEDIR/tmux/tmuxrc ~/.tmuxrc

  if [ -d ~/.scripts ]; then
    mv ~/.scripts $BACKUPDIR
  fi
  ln -f -s $BASEDIR/scripts ~/.scripts
}


if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  read -p "This may change existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
  doIt
  fi
fi
unset doIt


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

  if [ -d ~/.vim ]; then
    mv ~/.vim $BACKUPDIR
  fi
  ln -f -s $BASEDIR/vim ~/.vim 
  
  if [ -a ~/.vimrc ]; then
      mv ~/.vimrc $BACKUPDIR
  fi
  ln -f -s $BASEDIR/vim/vimrc ~/.vimrc


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

  if [ -a ~/.tmux.conf ]; then
    mv ~/.tmux.conf $BACKUPDIR
  fi
  ln -f -s $BASEDIR/tmux/tmux.conf ~/.tmux.conf

  if [ -d ~/.scripts ]; then
    mv ~/.scripts $BACKUPDIR
  fi
  ln -f -s $BASEDIR/scripts ~/.scripts



  if [ -a ~/.gitignore ]; then
    mv ~/.gitignore $BACKUPDIR
  fi  
  ln -f -s $BASEDIR/git/gitignore ~/.gitignore

  if ! type -p git > /dev/null; then
    echo "Git is apparently not installed, skipping setup"  
  else 
    echo -n "Your Name: "
    read GITUSER
    echo -n "Your Mail: "
    read GITMAIL
    git config --global user.name "$GITUSER"
    git config --global user.email "$GITMAIL"
    git config --global core.excludesfile ~/.gitignore
  fi
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


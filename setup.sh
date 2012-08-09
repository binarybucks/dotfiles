#!/bin/bash

SCRIPTPATH="$(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")"
BASEDIR=`dirname "$SCRIPTPATH"`

function doIt() {  
  # Note: -T prevents creatin of symlink in existing symlinks target, thus replaces the link for folders
  ln -f -s $BASEDIR/vim ~/.vim
  ln -f -s $BASEDIR/zsh ~/.zsh
  ln -f -s $BASEDIR/bash ~/.bash
  ln -f -s $BASEDIR/zsh/zshrc ~/.zshrc
  ln -f -s $BASEDIR/bash/bashrc ~/.bashrc
  ln -f -s $BASEDIR/tmux/tmux.conf ~/.tmux.conf
  ln -f -s $BASEDIR/scripts ~/.scripts
  ln -f -s $BASEDIR/git/gitignore ~/.gitignore
  ln -f -s $BASEDIR/gem/gemrc ~/.gemrc

  # Protect user gem dir from accidential writing
  if [ -d "~/.gem" ]; then
	chmod -R u-w ~/.gem
  fi

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


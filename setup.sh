#!/bin/bash

SCRIPTPATH="$(cd "${0%/*}" 2>/dev/null; echo "$PWD"/"${0##*/}")"
BASEDIR=`dirname "$SCRIPTPATH"`

function doIt() {  
  # Note: -T prevents creating of symlink in existing symlinks target, thus replaces the link for folders
  ln -n -f -s $BASEDIR/sublime/User ~/.sublime # Manually link to Packages/User in your Sublime folder
  ln -n -f -s $BASEDIR/vim ~/.vim
  ln -n -f -s $BASEDIR/zsh ~/.zsh
  ln -n -f -s $BASEDIR/bash ~/.bash
  ln -n -f -s $BASEDIR/zsh/zshrc ~/.zshrc
  ln -n -f -s $BASEDIR/bash/bashrc ~/.bashrc
  ln -n -f -s $BASEDIR/tmux/tmux.conf ~/.tmux.conf
  ln -n -f -s $BASEDIR/scripts ~/.scripts
  ln -n -f -s $BASEDIR/git/gitignore ~/.gitignore
  ln -n -f -s $BASEDIR/gem/gemrc ~/.gemrc

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
    echo "Now link ~/sublime to your sublime user directory (e.g.: ln -s ~/.sublime ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User)"
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


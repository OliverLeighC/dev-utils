#!/bin/bash
set -ex

while [ $# -gt 0 ] ; do
  case $1 in
    -a | --alias)
      # append aliases to ~/.bash_aliases
      cat $(dirname "$0")/aliases.sh >> ~/.bash_aliases
      shift
      ;;
    -z | --zsh)
      # tell ~/.zshrc to look at bash_aliases
      echo -e "\nif [ -e ~/.bash_aliases ]; then\n \t. ~/.bash_aliases\nfi" >> ~/.zshrc
      shift
      ;;
  esac
done
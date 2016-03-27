#!/usr/bin/env bash

# initial bits and pieces snagged straight from holman/dotfiles/script/boostrap

cd "$(dirname "$0")/.."
DOTFILES_ROOT=$(pwd)

set -e
echo ''

info () {
  printf " [ \033[00;34m..\033[0m ] $1"
}
user () {
  printf "\r [ \033[0;33m?\033[0m ] $1 "
}
success () {
  printf "\r\033[2K [ \033[00;32mOK\033[0m ] $1\n"
}
fail () {
  printf "\r\033[2K [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

link_file () {
  local src=$1 dst=$2
  local overwrite= backup= skip=
  if [ -f "$dst" -o -d "$dst" -o -L "$dst" ]; then
    local currentSrc="$(readlink $dst)"

    if [ "$currentSrc" == "$src" ]; then
      info "$src is already linked. Skipping\n"
      skip=true;
    else
      overwrite=${overwrite:-$overwrite_all}
      backup=${backup:-$backup_all}
      if [ "$overwrite" == "true" ]; then
        rm -rf "$dst"
        success "removed $dst"
      fi
      if [ "$backup" == "true" ]; then
        mv "$dst" "${dst}.backup"
        success "moved $dst to ${dst}.backup"
      fi
    fi
  fi
  if [ "$skip" != "true" ]; then
    ln -s "$1" "$2"
    success "linked $1 to $2"
  fi
}

check_and_install_zgen() {
  if [ ! -d "$HOME/.zgen" ]; then
    git clone https://github.com/tarjoilija/zgen.git ~/.zgen
  fi
}
install_dotfiles() {
  info "Installing dotfiles\n"
  local backup_all=true

  for src in $(find "$DOTFILES_ROOT" -maxdepth 2 -name '*.symlink')
  do
    dst="$HOME/.$(basename "${src%.*}")"
    link_file "$src" "$dst"
  done
}

install_vundles() {
  if [ ! -e "$HOME/.vim/bundle/vundle.vim" ]; then
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle.vim
  fi

  vim +PlugInstall +qall
}

check_and_install_zgen
install_dotfiles
install_vundles
echo ''
echo "All done!"


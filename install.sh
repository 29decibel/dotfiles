#!/bin/sh

echo Install Vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim


echo Dotfiles
ln -sf ${PWD}/vimrc ~/.vimrc
ln -sf ${PWD}/gitconfig ~/.gitconfig
ln -sf ${PWD}/tmux.conf ~/.tmux.conf
ln -sf ${PWD}/ctags ~/.ctags
ln -sf ${PWD}/custom-snippets ~/.vim/custom-snippets


brewInstallCopyPaste() {
  if hash brew 2>/dev/null; then
    echo Copy paste in tmux support
    brew install reattach-to-user-namespace
  else
    echo No need to instal, no brew found.
  fi
}

brewInstallCopyPaste

#!/bin/sh

echo Install vim-plug
# for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo Dotfiles
ln -sf ${PWD}/vimrc ~/.vimrc
ln -sf ${PWD}/vimrc ~/.config/nvim/init.vim
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

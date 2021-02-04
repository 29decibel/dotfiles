## Install Vim
```bash
# for vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sf ${PWD}/vimrc ~/.vimrc
# for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install neovim deps
# install neovim python to fix the following issue 
# UltiSnips requires py >= 2.7 or py3

pip install neovim

mkdir -p ~/.config/nvim/
ln -sf ${PWD}/vimrc ~/.config/nvim/init.vim

ln -sf ${PWD}/ctags ~/.ctags
ln -sf ${PWD}/custom-snippets ~/.vim/custom-snippets
```

## Gitconfig
```bash
ln -sf ${PWD}/gitconfig ~/.gitconfig
```

## Zsh

```bash
ln -sf ${PWD}/zshrc ~/.zshrc
ln -sf ${PWD}/tmux.conf ~/.tmux.conf
```


## copy paste in tmux
```bash
brewInstallCopyPaste() {
  if hash brew 2>/dev/null; then
    echo Copy paste in tmux support
    brew install reattach-to-user-namespace
  else
    echo No need to instal, no brew found.
  fi
}

brewInstallCopyPaste
```


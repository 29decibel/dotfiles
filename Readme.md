## Install vim with ruby support
```
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/vim.rb
```

## setup
```
rake setup
```

## compile Command-t
```
cd ~/.vim/bundle/Command-T/ruby/command-t
rbenv local system
ruby extract.rb
make
```

## copy snippets
```
cd ~/.vim/bundle/snipmate-snippets/
rake deploy_local
```

## not right?!
make sure you use the right vim **/** the default one is **/usr/bin/vim**
you can run **ln -sf /usr/local/Cellar/vim/7.3.632/bin/vim /usr/bin/vim** to symbolink the right version
or you can add the **/usr/local/Cellar/vim/7.3.632/bin** to to PATH

## Generate Ctags
```
/usr/local/bin/ctags -R
```

## Install YouCompleteMe
```
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
```

> loving vim, tmux, mac ...


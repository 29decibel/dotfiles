## Install vim with ruby support
```
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/vim.rb
brew install vim --with-ruby --with-python --with-perl
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

## Config your iterm
xterm-256color
font to powerline font

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

## Tmux Powerline
```bash
$ git clone git://github.com/erikw/tmux-powerline.git ~/.tmux-powerline

# copy the theme to tmux-powerline
$ cp ./tmux-powerline/29decibel.sh ~/.tmux-powerline/themes/
$ ln -sf ./tmux-powerline/tmux-powerlinerc ~/.tmux-powerlinerc
```

## scala
You need to check out appropriate ensime branch by hand by running ie.

> git checkout scala-2.10
in ensime plugin directory managed by vundle (probably ~/.vim/bundle/ensime). Also you'll need to run make in vimproc directory.

> loving vim, tmux, mac ...

## TODO
* write a shell script to automate this installation process



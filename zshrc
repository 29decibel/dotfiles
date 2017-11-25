source ~/.zprezto/init.zsh

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$HOME/Library/Haskell/bin:$PATH"

export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"

export GOPATH="$HOME/go-projects"
export PATH=$PATH:$GOPATH/bin

export ANDROID_HOME=~/Library/Android/sdk


# load all dev used keys (like AWS etc.)
[ -f ~/.dev_keys.zsh ] && source ~/.dev_keys.zsh

export PATH=$PATH:$HOME/.local/bin

export ANDROID_HOME=~/Library/Android/sdk

export EDITOR=vim
export VISUAL=vim
alias crontab="VIM_CRONTAB=true crontab"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export TERM=xterm-256color

# vim fzf
export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/Cellar/vim/7.3.502/bin:/Users/lidongbin/app_bins/todo.txt_cli-2.9:$PATH"

eval "$(rbenv init -)"
export BUNDLER_EDITOR=mvim

# some alias
alias cdp='cap deploy:production'
alias t='todo.sh -d /Users/lidongbin/app_bins/todo.txt_cli-2.9/todo.cfg'

# for rails migration
alias dbm='bundle exec rake db:auto:migrate'
alias tdbm='RAILS_ENV=test bundle exec rake db:auto:migrate'
alias be='bundle exec'

# for tmux
export EDITOR=vim
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator

# Helpful tmux aliases for interacting with the system clipboard.
alias tmux-buffer-to-clipboard='tmux save-buffer -|pbcopy'
alias tmux-buffer-from-clipboard='tmux set-buffer "$(pbpaste)"'

# tmux helper
alias mux='tmuxinator'

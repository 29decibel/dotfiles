task :default => [:setup]

desc "setup"
task :setup do
  dir = File.dirname(File.expand_path(__FILE__))
  `ln -sf #{File.join(dir,'vimrc')} ~/.vimrc`
  `ln -sf #{File.join(dir,'ackrc')} ~/.ackrc`
  `ln -sf #{File.join(dir,'gitconfig')} ~/.gitconfig`
  `ln -sf #{File.join(dir,'tmux.conf')} ~/.tmux.conf`
  `ln -sf #{File.join(dir,'tmuxinator')} ~/.tmuxinator`
  `ln -sf #{File.join(dir,'sbtconfig')} ~/.sbtconfig`
  `ln -sf #{File.join(dir,'ctags')} ~/.ctags`
  # for custom snippets(used by UltiSnips)
  `mkdir ~/.vim`
  `ln -sf #{File.join(dir,'custom-snippets')} ~/.vim/custom-snippets`
  puts 'setup done.'
end

desc "copy and paste in tmux"
task :copy_paste_support do
  `brew install reattach-to-user-namespace`
end

desc "install vim"
task :install_vim do
  `brew install macvim --env-std --override-system-vim`
end


desc "setup"
task :setup do
  dir = File.dirname(File.expand_path(__FILE__))
  `ln -sf #{File.join(dir,'.vimrc')} ~/.vimrc`
  `ln -sf #{File.join(dir,'.gitconfig')} ~/.gitconfig`
  `ln -sf #{File.join(dir,'.tmux.conf')} ~/.tmux.conf`
  puts 'setup done.'
end

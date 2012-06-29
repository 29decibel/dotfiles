desc "setup"
task :setup do
  dir = File.dirname(File.expand_path(__FILE__))
  `ln -sf #{File.join(dir,'.vimrc')} ~/.vimrc`
  `ln -sf #{File.join(dir,'.gitconfig')} ~/.gitconfig`
  `ln -sf #{File.join(dir,'.tmux.conf')} ~/.tmux.conf`
  puts 'setup done.'
end

desc "copy and paste in tmux"
task :copy_paste_support do
  `git clone git://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard.git`
  `cd tmux-MacOSX-pasteboard`
  `make && cp reattach-to-user-namespace /usr/local/bin`
end


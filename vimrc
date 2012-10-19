" got vundle first
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails.git'
Bundle 'msanders/snipmate.vim'
Bundle '29decibel/snipmate-snippets'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'
Bundle 'godlygeek/tabular'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-markdown'
Bundle 'wincent/Command-T'
Bundle 'samsonw/vim-task'
"Bundle 'kien/ctrlp.vim'
"Bundle 'tomtom/tcomment_vim'
Bundle 'bbommarito/vim-slim'
Bundle 'groenewege/vim-less'
Bundle 'Lokaltog/vim-powerline'
Bundle 'derekwyatt/vim-scala'
Bundle 'tpope/vim-cucumber'
Bundle 'DAddYE/tomorrow.vim'
Bundle 'digitaltoad/vim-jade'
"Bundle 'msanders/cocoa.vim'
" ruby rails docs
" Bundle 'lucapette/vim-ruby-doc'
let g:ruby_doc_command='open'

" for eco snippets
" a file can be multiple filetyles, using "." to seperate
autocmd FileType eco set ft=eco.html

"set the color scheme
syntax enable
colorscheme slate
if has("gui_running")
  colorscheme Tomorrow
endif
set background=dark

"set nowrap
set nowrap
"when you tap the tap, the bottom will list all available commands
set wildmenu
" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
      \ endif
"no swap file
set noswapfile
"no backup file
set nobackup
"ignore the capitalize when search
set ignorecase
"set autoindent
set autoindent
"remove bars
set guioptions-=T
set guioptions-=m
set guioptions+=b
"the tabs
set expandtab
set tabstop=2
set shiftwidth=2
"set number
"set number
"highlight search and increamental
set hlsearch
set incsearch
"no fitering
set novisualbell
"set the window size
"if has("gui_running")
"	set lines=999
"	set columns=999
"end
" encoding matters
set encoding=utf-8
"set files
set nocompatible
syntax on
filetype plugin indent on
"save map
inoremap <C-s> <esc>:w<CR>:echo expand("%f")." saved."<CR>
vnoremap <C-s> <esc>:w<CR>:echo expand("%f")." saved."<CR>
nnoremap <C-s> :w<CR>:echo expand("%f")." saved."<CR>
"the font
set guifont=Monaco:h14
if has("gui_running")
  set guifont=Monaco:h13
endif

" for the tmux or screen
set ttimeoutlen=50
set backspace=2

if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif
set wildignore+=tmp/cache/**,*.o,*.obj,.git,*.png,*.gif,*.jpg,*.pdf,*.mobi,*.epub

" Strip trailing whitespace
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" mappings for the ctrlP
let g:ctrlp_working_path_mode = 0
nnoremap <leader><leader> :CtrlP<cr>
nnoremap <leader>bb :CtrlP app/assets/javascripts/backbone<CR>
nnoremap <leader>f :CommandTFlush<CR>

" maps for vim-task
inoremap <silent> <buffer> <C-D-CR> <ESC>:call Toggle_task_status()<CR>i
noremap <silent> <buffer> <C-D-CR> :call Toggle_task_status()<CR>

" maps for nerdtree
nnoremap <leader>n :NERDTree .<CR>

" for split window
nnoremap <leader>s :split<CR>
nnoremap <leader>v :vsplit<CR>

" refresh config
nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>e :vsplit $MYVIMRC<CR>

" nerdtree ignore config
let NERDTreeIgnore=['.xcodeproj$[[dir]]','.xcdatamodeld$[[dir]]','.zip$[[file]]','.lproj$[[dir]]','.xcdatamodel$[[dir]]']

" quick show me the dropbox
nnoremap <leader>d :NERDTree ~/Dropbox/notes<CR>:cd ~/Dropbox/notes<CR>

" ack search
nnoremap <leader>g :AckFromSearch()<CR>

" increase or decrease window size
nnoremap <leader>, 10<C-w>><CR>
nnoremap <leader>. 10<C-w><<CR>

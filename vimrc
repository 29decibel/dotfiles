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
 Bundle 'scrooloose/snipmate-snippets'
 Bundle 'kchmck/vim-coffee-script'
 Bundle 'scrooloose/nerdtree'
 " non github repos
 Bundle 'wincent/Command-T'

"set the color scheme
"colorscheme slate
syntax enable
"if has('gui_running')
	"set background=light
  "set background=dark
"else
  "set background=dark
"endif
"colorscheme solarized
colorscheme desert
"colorscheme Dark

"set opacity
if has('gui_runnning')
	set transparency=2
endif
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
set number
"highlight search and increamental
set hlsearch
set incsearch
"no fitering
set novisualbell
"set the window size
if has("gui_running")
	set lines=999
	set columns=999
end
"set files
set nocompatible
syntax on
filetype plugin indent on
"save map
imap <C-s> <esc>:w<CR>:echo expand("%f")." saved."<CR>
vmap <C-s> <esc>:w<CR>:echo expand("%f")." saved."<CR>
nmap <C-s> :w<CR>:echo expand("%f")." saved."<CR>
"the font
set guifont=Monaco:h14
"map the rails project
nmap RR :e Gemfile<CR>:Rtree<CR>
" map for rails 
nnoremap <leader>m :Rmodel<space>
nnoremap <leader>c :Rcontroller<space>
nnoremap <leader>v :Rview<space>
" for the tmux or screen
set ttimeoutlen=50
set backspace=2

if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

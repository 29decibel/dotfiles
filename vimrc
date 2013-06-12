" got vundle first
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
" for powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
" ###############################################################
"
" for git
Bundle 'tpope/vim-fugitive'
" for rails
Bundle 'tpope/vim-rails.git'
" snipmate
Bundle "SirVer/ultisnips"
" nerdtree
Bundle 'scrooloose/nerdtree'
" search
" Bundle 'mileszs/ack.vim' ag is much faster than this
Bundle 'rking/ag.vim'
" tab formation
Bundle 'godlygeek/tabular'
" really nice taskpaper implementation
Bundle 'davidoc/taskpaper.vim'
" window manager
" Bundle 'spolu/dwm.vim' really nice window manager, but not use for now
" search replace command-t
" Bundle 'kien/ctrlp.vim' sorry not fast enough than command-T
" language specific plugins
Bundle 'kchmck/vim-coffee-script'
Bundle 'groenewege/vim-less'
Bundle 'digitaltoad/vim-jade'
Bundle 'derekwyatt/vim-scala'
Bundle 'tpope/vim-cucumber'
Bundle 'tpope/vim-markdown'
Bundle 'nono/vim-handlebars'
Bundle 'wavded/vim-stylus'
Bundle 'slim-template/vim-slim'
" for vim-gist
" Bundle 'mattn/webapi-vim'
" Bundle 'mattn/gist-vim'
" for vmux
Bundle 'benmills/vimux'
" show tagbar
Bundle 'majutsushi/tagbar'
" colors
Bundle 'altercation/vim-colors-solarized'
" Bundle 'DAddYE/tomorrow.vim'
" exec sql query within vim
" very nice database connection plugin
Bundle 'vim-scripts/dbext.vim'
" for ctags
" gem install gem-ctags
" manually generate ctags: gem ctags
Bundle 'tpope/vim-bundler'
" powerline
Bundle 'Lokaltog/powerline'
" check syntax
" Bundle 'scrooloose/syntastic'
" comment
Bundle 'scrooloose/nerdcommenter'
" command t
Bundle 'wincent/Command-T'
" for autocompletion, this is good, but too good sometimes
" Bundle 'Valloric/YouCompleteMe'
Bundle '29decibel/codeschool-vim-theme'
" DASH
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'
" expand selection
Bundle 'terryma/vim-expand-region'
" dispatch
Bundle 'tpope/vim-dispatch'
" javascript syntax
Bundle 'jelera/vim-javascript-syntax'

" ######################################################################################

" for eco snippets
" a file can be multiple filetyles, using "." to seperate
autocmd FileType eco set ft=eco.html

"set the color scheme
syntax enable
colorscheme solarized
if has("gui_running")
  " colorscheme Tomorrow
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
set guifont=Monaco\ for\ Powerline:h14
if has("gui_running")
  set guifont=Monaco\ for\ Powerline:h14
endif

" for the tmux or screen
set ttimeoutlen=50
set backspace=2

" only used for command-t
" if &term =~ "xterm" || &term =~ "screen"
"   let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
"   let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
"   let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
" endif

set wildignore+=build/**,node_modules/**,tmp/cache/**,*.o,*.obj,.git,*.png,*.gif,*.jpg,*.pdf,*.mobi,*.epub,*.class

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
" let g:ctrlp_working_path_mode = 0
" nnoremap <leader><leader> :CtrlP<cr>
" nnoremap <leader>t :CtrlP<cr>
" nnoremap <leader>bb :CtrlP app/assets/javascripts/backbone<CR>
" nnoremap ; :CtrlPBuffer<CR>
" nnoremap <leader>f :CommandTFlush<CR>

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
let NERDTreeIgnore=['.xcodeproj$[[dir]]','.xcdatamodeld$[[dir]]','.zip$[[file]]','.lproj$[[dir]]','.xcdatamodel$[[dir]]','__km.*']

" quick show me the dropbox
nnoremap <leader>d :NERDTree ~/Dropbox/wiki<CR>

" ack search
" nnoremap <leader>g :AckFromSearch()<CR>

" increase or decrease window size
nnoremap <leader>, 10<C-w>><CR>
nnoremap <leader>. 10<C-w><<CR>

" allow using mouse to change window size
set ttymouse=xterm2
set mouse=n

" ctrlp set max showing matches
" let g:ctrlp_max_height = 30
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|tmp'

" nerdtree find
nnoremap <leader>b :NERDTreeFind<CR>

" invoke tarbar toggle
nnoremap TT :TagbarToggle<CR>

" generate ctags
nnoremap <C-g> :!/usr/local/bin/ctags -R<CR>

" close window
nnoremap <C-x> :q<CR>

" always show status bar
set laststatus=2

" dbext
" let dbext_default_type = 'MYSQL'
" let dbext_default_user = 'root'
" let dbext_default_passwd = 'password'
" let dbext_default_dbname = 'loyal3_test'
" let dbext_default_host = 'localhost'

" This will look in the current directory for 'tags',
" and work up the tree towards root until one is found. IOW,
" you can be anywhere in your source tree instead of just the root of it.
set tags=./tags;/
set spell

" I really need smartcase
set smartcase

" Ultisnips
let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom-snippets"]
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" copy to system clipboard
vmap <C-c> :w !pbcopy<CR><CR>

set ttimeoutlen=50

" for command-t working in tmux
if &term =~ "xterm" || &term =~ "screen"
  let g:CommandTCancelMap     = ['<ESC>', '<C-c>']
  let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
  let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

" for vimux
nnoremap <leader>xr :VimuxPromptCommand<CR>
nnoremap <leader>xl :VimuxRunLastCommand<CR>

" taskpaper
nnoremap <leader>p :NERDTree ~/Dropbox/tasks<CR>

" example function to generate javascript comments
function! GenerateDOCComment()
  let l    = line('.')
  let i    = indent(l)
  let pre  = repeat(' ',i)
  let text = getline(l)
  let params   = matchstr(text,'([^)]*)')
  let paramPat = '\([$a-zA-Z_0-9]\+\)[, ]*\(.*\)'
  echomsg params
  let vars = []
  let m    = ' '
  let ml = matchlist(params,paramPat)
  while ml!=[]
    let [_,var;rest]= ml
    let vars += [pre.' * @param '.var]
    let ml = matchlist(rest,paramPat,0)
  endwhile
  let comment = [pre.'/**',pre.' * '] + vars + [pre.' */']
  call append(l-1,comment)
  call cursor(l+1,i+3)
endfunction

" escape html
" :call HtmlEscape()
function! HtmlEscape()
  silent s/&/\&amp;/eg
  silent s/</\&lt;/eg
  silent s/>/\&gt;/eg
endfunction

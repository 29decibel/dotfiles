" got vundle first
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/Vundle.vim'

" My Plugins here:
" ###############################################################
"
" hope this is the most awesome one
Plugin 'tpope/timl'

" for git
Plugin 'tpope/vim-fugitive'

" for rails
Plugin 'tpope/vim-rails.git'

" snipmate
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" nerdtree
Plugin 'scrooloose/nerdtree'

" search
" Plugin 'mileszs/ack.vim' ag is much faster than this
Plugin 'rking/ag.vim'

" tab formation
Plugin 'godlygeek/tabular'

" really nice taskpaper implementation
Plugin 'davidoc/taskpaper.vim'

" window manager
" Plugin 'spolu/dwm.vim' really nice window manager, but not use for now
" language specific plugins
Plugin 'kchmck/vim-coffee-script'
Plugin 'groenewege/vim-less'
Plugin 'tpope/vim-markdown'
Plugin 'nono/vim-handlebars'
Plugin 'juvenn/mustache.vim'

" color scheme zenburn
Plugin 'jnurmine/Zenburn'

" for vmux
Plugin 'benmills/vimux'

" show tagbar
Plugin 'majutsushi/tagbar'

" colors
Plugin 'altercation/vim-colors-solarized'
" Plugin 'DAddYE/tomorrow.vim'
" exec sql query within vim
" very nice database connection plugin
"Plugin 'vim-scripts/dbext.vim'
" for ctags
" gem install gem-ctags
" manually generate ctags: gem ctags
Plugin 'tpope/vim-bundler'

" check syntax
Plugin 'scrooloose/syntastic'

" comment
Plugin 'scrooloose/nerdcommenter'

" command t
" Plugin 'wincent/Command-T'

" ctrlp
Plugin 'kien/ctrlp.vim'

" expand selection
Plugin 'terryma/vim-expand-region'

" dispatch
" send commands to other panel of the terminal
Plugin 'tpope/vim-dispatch'

" javascript syntax
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'

" go lang
Plugin 'jnwhiteh/vim-golang'

" abolish.vim: easily search for, substitute, and abbreviate multiple variants
" of a word
Plugin 'tpope/vim-abolish'
"Plugin 'amix/vim-zenroom'

" turn your raw tempalte into string
Plugin '29decibel/vim-stringify'

" for clojure
Plugin 'tpope/vim-classpath'
Plugin 'tpope/vim-fireplace'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'

Plugin 'toyamarinyon/vim-swift'

Plugin 'ConradIrwin/vim-bracketed-paste'

Plugin 'reedes/vim-colors-pencil'
"Plugin 'vim-scripts/paredit.vim'

" for golang
Plugin 'fatih/vim-go'

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'lambdatoast/elm.vim'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ######################################################################################
syntax enable

" for eco snippets
" a file can be multiple filetyles, using "." to seperate
autocmd FileType eco set ft=eco.html

" for golang
" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
"filetype off
"filetype plugin indent off
"set runtimepath+=$GOROOT/misc/vim
"filetype plugin indent on
"syntax on
let g:golang_goroot = "/usr/local/Cellar/go/1.2/libexec"
autocmd FileType go compiler golang
autocmd FileType go autocmd BufWritePre <buffer> Fmt
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

"set the color scheme

set t_Co=256
colorscheme solarized
"colorscheme pencil
let g:solarized_termtrans = 1

set background=dark

" for airline
"let g:airline_theme="tomorrow"

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
  set guifont=Monaco\ for\ Powerline:h12
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

" nnoremap <leader>t :Unite file_rec/async<cr>

set wildignore+=*/target/*,*/build/*,*/node_modules/*,tmp/cache/**,*.o,*.obj,.git,*.ttf,*.png,*.ico,*.wof,*.eot,*.svg,*.gif,*.jpg,*.pdf,*.mobi,*.epub,*.class

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

" auto compile elm file
au BufWritePost *.elm ElmMakeCurrentFile

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

" nerdtree find
nnoremap <leader>b :NERDTreeFind<CR>

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:40,results:40'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|tmp\|node'
nnoremap <leader>t :CtrlP<cr>

" invoke tarbar toggle
nnoremap TT :TagbarToggle<CR>

" generate ctags
nnoremap <C-g> :!/usr/local/bin/ctags -R<CR>

" close window
nnoremap <C-x> :q<CR>

" always show status bar
set laststatus=2

" This will look in the current directory for 'tags',
" and work up the tree towards root until one is found. IOW,
" you can be anywhere in your source tree instead of just the root of it.
set tags=./tags;/
" set spell

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

map <leader>g :call Stringify()<CR>

let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'

" get rid of split char
set fillchars-=vert:\|


nnoremap <leader>h :lne<CR>
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_go_checkers=['golint']

let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }


set shortmess=a

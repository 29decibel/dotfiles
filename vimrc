" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" snipts, snipets, snipets
" Plug 'Shougo/neocomplete'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" javascript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

" git
Plug 'tpope/vim-fugitive'

" Elixir
Plug 'elixir-editors/vim-elixir'

" ES6
Plug 'isRuslan/vim-es6'

" comment
Plug 'scrooloose/nerdcommenter'

" Theme
Plug 'lifepillar/vim-solarized8'
Plug 'ajh17/Spacegray.vim' " https://github.com/ajh17/Spacegray.vim

" SASS
Plug 'cakebaker/scss-syntax.vim'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" Fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Syntax
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

syntax enable

""""""""""""""""""" MAPPINGS 
" maps for nerdtree - start
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>b :NERDTreeFind<CR>
" maps for nerdtree - end


" for split window - start
nnoremap <leader>s :split<CR>
nnoremap <leader>v :vsplit<CR>
" for split window - end


" FZF - start
nnoremap <leader>t :FZF<cr>
" FZF - end


" backspace delete
set backspace=2
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


" GUI fonts - start
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif
" GUI fonts - end


""""""""""""""" snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" Theme
set background=dark
colorscheme spacegray


let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" wrap
set nowrap

" mouse
set mouse=n

" remember me please
" Jump to last cursor position unless it's invalid or in an event handler
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal g`\"" |
\ endif

" no swap file
set noswapfile

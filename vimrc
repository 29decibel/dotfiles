if has('python3')
  silent! python3 1
endif
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on':  ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" snipts, snipets, snipets
" Plug 'Shougo/neocomplete'
" Plug 'Shougo/neosnippet'
" Plug 'Shougo/neosnippet-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" javascript
Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'

" elixir
Plug 'slashmili/alchemist.vim'

" mustache
Plug 'mustache/vim-mustache-handlebars'

" theme solarized
" Plug 'altercation/vim-colors-solarized'
" Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'

" Rails
Plug 'tpope/vim-rails'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" ES6
Plug 'isRuslan/vim-es6'

" fancy status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" comment
Plug 'scrooloose/nerdcommenter'

" Theme
Plug 'lifepillar/vim-solarized8'
Plug 'ajh17/Spacegray.vim' " https://github.com/ajh17/Spacegray.vim

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" Fuzzy search
" Put the following into .zshrc
" export FZF_DEFAULT_COMMAND='ag -g ""'
" export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Syntax
" Plug 'w0rp/ale'

" monokai
Plug 'sickill/vim-monokai'

"Plug 'ElmCast/elm-vim'

"Plug 'udalov/kotlin-vim'

Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

Plug 'zah/nim.vim'

Plug 'flowtype/vim-flow'

" for JS auto complete
Plug 'ternjs/tern_for_vim'

" Plug 'sheerun/vim-polyglot'

" zen mode writing
" Plug 'junegunn/goyo.vim'

" auto close
" Plug 'Townk/vim-autoclose'

" https://medium.com/@rahul11061995/autocomplete-in-vim-for-js-developer-698c6275e341
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }

" surroundings
Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

syntax enable
filetype plugin indent on

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
set tabstop=2       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=2    " Indents will have a width of 4

set softtabstop=2   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces


" GUI fonts - start
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    " i don't want any scrollbars
    " https://til.hashrocket.com/posts/1bcac01e65-remove-both-scrollbars-from-macvim
    set guioptions=
    set guifont=Menlo\ Regular:h12
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
" https://github.com/lifepillar/vim-solarized8
let g:solarized_use16 = 1
set t_Co=256
let g:solarized_termcolors=256
colorscheme solarized8

" high light search
set hlsearch

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" notes
let g:notes_directories = ['~/Documents/Notes', '~/Dropbox/Shared Notes']

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

" dart auto complete
let g:lsc_server_commands = {'dart': 'dart_language_server'}

" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam config var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line


" AUTOCOMPLETE
" https://medium.com/vim-drops/javascript-autocompletion-on-vim-4fea7f6934e2
filetype plugin on
set omnifunc=syntaxcomplete#Complete


" Start autocompletion after 4 chars
let g:ycm_min_num_of_chars_for_completion = 4
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_enable_diagnostic_highlighting = 0
" Don't show YCM's preview window [ I find it really annoying ]
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0

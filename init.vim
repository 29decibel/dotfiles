call plug#begin('~/.local/share/nvim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'SirVer/ultisnips'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'adrian5/oceanic-next-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

Plug 'arcticicestudio/nord-vim'

" elm
Plug 'ElmCast/elm-vim'

Plug 'preservim/nerdcommenter' 

" Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'dense-analysis/ale'

Plug 'elixir-editors/vim-elixir'

Plug 'mhinz/vim-mix-format'

Plug 'tpope/vim-projectionist'

" snippets is the best
Plug 'honza/vim-snippets'

call plug#end()

" Elixir editor needs these
" Enable syntax highlighting
syntax on

" no wrap please
set nowrap

" fzf
let mapleader = "\\"
nmap <silent><leader>t :Files<CR>

" nerd tree
nmap <silent><leader>b :NERDTreeFind<CR>

" ale elixir
let g:ale_fixers = { 'elixir': ['mix_format'] }

" split screen
nmap <silent><leader>v :vsplit<CR>
nmap <silent><leader>s :split<CR>

""""""""""""""""" color
colorscheme nord

" airline
let g:airline_theme='night_owl'

" govim
let g:go_list_type = "quickfix"
let g:go_fmt_command = "goimports"


" remember last edit point
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"elixir mix format
let g:mix_format_on_save = 1


au BufRead,BufNewFile *.ex,*.exs set filetype=elixir
au BufRead,BufNewFile *.eex,*.heex,*.leex,*.sface,*.lexs set filetype=eelixir
au BufRead,BufNewFile mix.lock set filetype=elixir

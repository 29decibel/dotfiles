call plug#begin('~/.local/share/nvim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --no-bash' }
Plug 'junegunn/fzf.vim'

" we still need this to make the magic happening
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'

Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive'

Plug 'adrian5/oceanic-next-vim'
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" typescript and js stuff, react of course
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

Plug 'preservim/nerdcommenter' 

" coc the stuff makes everything ticks
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

" this is pretty slick, which makes prettier and eslint through coc as well
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif


Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'

Plug 'tpope/vim-projectionist'

Plug 'rust-lang/rust.vim'

call plug#end()

" no wrap please
set nowrap

" coc make it display more stuff for us
nnoremap <silent> K :call CocAction('doHover')<CR>

" common bidings to go to for coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)

" jumping between errors in the current file
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
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

" mainly for dart
"coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-flutter',
  \ ]


" remember last edit point
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

"elixir mix format
let g:mix_format_on_save = 1


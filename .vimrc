set nocompatible
syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" leader key bindings
let mapleader=","
nnoremap <leader>w :w<CR>
nnoremap <C-h> <Esc>:bprev<CR>
nnoremap <C-l> <Esc>:bnext<CR>
nnoremap <C-c> <Esc>:noh<CR>

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeWinSize=60
nnoremap <leader>e :NERDTreeToggle<CR>

" ctrlp
let g:ctrlp_map='<C-p>'
let g:ctrlp_cmd='CtrlP'
let g:ctrlp_working_path_mode='ra'
let g:ctrlp_show_hidden=1

" emmet
let g:user_emmet_leader_key='<C-e>'

" ALE
let g:ale_fixers={
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}
nnoremap <leader>f <Esc>:ALEFix<CR>

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>a <Plug>(coc-codeaction)
"xmap <leader>f <Plug>(coc-format-selected)
"nmap <leader>f <Plug>(coc-format-selected)

colorscheme oolory
set nobackup
set noswapfile
set noruler
set expandtab
set number
set shiftwidth=4
set tabstop=4
set clipboard+=unnamedplus
set backspace=indent,eol,start
set belloff=all
set signcolumn=yes
set updatetime=300
set hidden
set termguicolors
set scrolloff=10
set laststatus=2
set cmdheight=2
set shortmess=aFc
set ignorecase smartcase
set showmatch
set incsearch
set hlsearch
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set ttyfast
set lazyredraw

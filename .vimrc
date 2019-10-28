set nocompatible
syntax on
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'

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

set nobackup
set noswapfile
set noruler
set expandtab
set number
set clipboard+=unnamedplus
set backspace=indent,eol,start
set belloff=all
set hidden
set scrolloff=10
set termguicolors
set t_Co=256
set laststatus=2
set ignorecase smartcase
set showmatch
set incsearch
set hlsearch
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set ttyfast
set lazyredraw

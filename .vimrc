" Settings
syntax on
filetype plugin indent on

set nocompatible
set shortmess+=ac
set scrolloff=10
set sidescrolloff=10
set signcolumn=yes
set nonumber
set ruler
set backspace=indent,eol,start
set clipboard+=unnamedplus
set belloff=all
set hidden
set tabstop=4
set ignorecase smartcase
set hlsearch
set incsearch
set shiftwidth=4
set laststatus=2
set autoindent
set autochdir
set noswapfile
set nobackup
set noundofile
set path+=**
set wildmenu
set wildignore+=**/tmp/**,*.so,*.swp,*.zip,**/node_modules/**
set ttyfast
set lazyredraw
colorscheme oolory

" Bindings
let mapleader=","

nnoremap <Esc><Esc> <Esc>:noh<cr>
nnoremap <leader>w <Esc>:w<cr>
nnoremap <leader>b <Esc>:buffers<CR>:buffer<space>
nnoremap <leader>e <Esc>:Lexplore<CR>
nnoremap <leader>f <Esc>:!yarn fix<CR>
nnoremap <C-h> <Esc>:bprev<CR>
nnoremap <C-l> <Esc>:bnext<CR>

" file browser
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_list_hide=netrw_gitignore#Hide()

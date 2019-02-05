set nocompatible

syntax on

filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Nerdtree
let NERDTreeShowHidden          =1
nnoremap <C-n> :NERDTreeToggle<CR>

" ctrlp
let g:ctrlp_map                 ='<C-p>'
let g:ctrlp_cmd                 ='CtrlP'
let g:ctrlp_working_path_mode   ='ra'
let g:ctrlp_show_hidden         =1

" airline
let g:airline_theme = 'dracula'
let g:airline#extensions#branch#enabled = 1 " needs fugitive to work
let g:airline#extensions#tabline#enabled = 1 
let g:airline_section_warning = '' 
let g:airline_section_y = '' 
let g:airline_section_x = ''
" let g:airline_left_sep = ' ? '
" let g:airline_right_sep = ' ? '

" emmet
let g:user_emmet_leader_key     ='<C-e>'

" terminal
tnoremap <Esc> <C-\><C-n>

" clear search highlight
nnoremap <C-c> <Esc>:noh<CR>

" moving between buffers
nnoremap <C-h> <Esc>:bprev<CR>
nnoremap <C-l> <Esc>:bnext<CR>

" leader key bindings
let mapleader                   =","
nnoremap <leader>w :w<CR>

colorscheme dracula
set smartindent
set nobackup
set noswapfile
set noruler
set expandtab
set number relativenumber
set clipboard+=unnamedplus
set backspace			=indent,eol,start
set belloff                     =all
set hidden
set cursorline
set scrolloff			=10
set termguicolors
set t_Co                        =256
set laststatus                  =2
set ignorecase smartcase
set showmatch
set incsearch
set hlsearch
set wildmenu
set wildignore			+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set ttyfast
set lazyredraw

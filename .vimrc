" plugins
packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-surround')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('scrooloose/nerdtree')
call minpac#add('neoclide/coc.nvim', {'do': 'call coc#util#install()'})

" commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! GitStatus !clear && git status
command! GitLogShort call GitLogShortFunction()
command! GitLogFull call GitLogFullFunction()
command! GitDiff call GitDiffFunction()
command! ModifyVimrc edit $MYVIMRC
command! LoadVimrc source $MYVIMRC

" functions
function GitLogShortFunction()
	silent execute "!clear && git log --graph --all --oneline"
	redraw!
endfunction
function GitLogFullFunction()
	silent execute "!clear && git log --graph --all"
	redraw!
endfunction
function GitDiffFunction()
	silent execute "!clear && git diff"
	redraw!
endfunction

" settings
syntax on
filetype plugin indent on

set nocompatible
set shortmess=aFc
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
set autoread
set noswapfile
set nobackup
set noundofile
set path+=**
set wildmenu
set wildignore+=**/tmp/**,*.so,*.swp,*.zip,**/node_modules/**
set updatetime=300
set ttyfast
set lazyredraw
colorscheme oolory

" bindings
let mapleader=","

nnoremap <Esc><Esc> <Esc>:noh<cr>
nnoremap <leader>w <Esc>:w<cr>
nnoremap <leader>b <Esc>:buffers<CR>:buffer<space>
nnoremap <leader>e <Esc>:NERDTreeToggle<CR>
nnoremap <leader>f <Esc>:Format<CR>
nnoremap <leader>gs <Esc>:GitStatus<CR>
nnoremap <leader>gd <Esc>:GitDiff<CR>
nnoremap <leader>gls <Esc>:GitLogShort<CR>
nnoremap <leader>glf <Esc>:GitLogFull<CR>
nnoremap <C-h> <Esc>:bprev<CR>
nnoremap <C-l> <Esc>:bnext<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>a <Plug>(coc-codeaction)

" file browser
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_list_hide=netrw_gitignore#Hide()

" completions
" use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

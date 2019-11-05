set nocompatible

syntax on
filetype plugin indent on

packadd minpac
call minpac#init()

call minpac#add('tpope/vim-surround')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('dense-analysis/ale')
"call minpac#add('scrooloose/nerdtree')
"call minpac#add('ctrlpvim/ctrlp.vim')
"call minpac#add('mattn/emmet-vim')
"call minpac#add('neoclide/coc.nvim', {'do': 'call coc#util#install()'})

command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

set background=light
set nobackup
set noswapfile
set ruler
set clipboard+=unnamedplus
set backspace=indent,eol,start
set belloff=all
set hidden
set termguicolors
set scrolloff=10
set laststatus=2
set cmdheight=2
set shortmess+=c
set ignorecase smartcase
set showmatch
set incsearch
set hlsearch

set path+=**
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

set ttyfast
set lazyredraw

" key bindings
let mapleader=","
nnoremap <leader>w <Esc>:w<CR>
nnoremap <leader>b <Esc>:buffers<CR>:buffer<space>
nnoremap <leader>f <Esc>:!yarn fix<CR>
nnoremap <leader>l <Esc>:!yarn lint<CR>
nnoremap <leader>e <Esc>:Lexplore<CR>
nnoremap <C-h> <Esc>:bprev<CR>
nnoremap <C-l> <Esc>:bnext<CR>
nnoremap <silent> <Esc><Esc> <Esc>:noh<CR>

" file browser
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()

" OLD CONFIG

"" key bindings
"let mapleader=","
"nnoremap <leader>w <Esc>:w<CR>
"nnoremap <leader>b <Esc>:buffers<CR>:buffer<space>
"nnoremap <C-h> <Esc>:bprev<CR>
"nnoremap <C-l> <Esc>:bnext<CR>
"nnoremap <C-c> <Esc>:noh<CR>
"nnoremap <leader>c <Esc>:call <SID>SynStack()<CR>
"
"" open cw after git grep
"autocmd QuickFixCmdPost *grep* cwindow
"
"" check syntax color
"function! <SID>SynStack()
"    if !exists("*synstack")
"        echo "no synstack" return
"    endif
"    echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
"endfunc
"
"" NERDTree
"let NERDTreeShowHidden=1
"let NERDTreeWinSize=60
"nnoremap <leader>e <Esc>:NERDTreeToggle<CR>
"
"" ctrlp
"let g:ctrlp_map='<C-p>'
"let g:ctrlp_cmd='CtrlP'
"let g:ctrlp_working_path_mode='ra'
"let g:ctrlp_show_hidden=1
"
"" emmet
"let g:user_emmet_leader_key='<C-e>'
"
"" coc
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"nmap <silent> <leader>a <Plug>(coc-codeaction)
"xmap <silent> <leader>f <Plug>(coc-format-selected)
"nmap <silent> <leader>f <Plug>(coc-format-selected)
"
"colorscheme oolory
"set nobackup
"set noswapfile
"set ruler
"set expandtab
""set number
"set shiftwidth=4
"set tabstop=4
"set clipboard+=unnamedplus
"set backspace=indent,eol,start
"set belloff=all
""set signcolumn=yes
"set updatetime=300
"set hidden
"set termguicolors
"set scrolloff=10
"set laststatus=2
"set cmdheight=2
"set shortmess+=c
"set ignorecase smartcase
"set showmatch
"set incsearch
"set hlsearch
"set wildmenu
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
"set ttyfast
"set lazyredraw

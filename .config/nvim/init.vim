" dein
if &compatible
 set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
 call dein#begin('~/.cache/dein')

 call dein#add('~/.cache/dein')
 call dein#add('Shougo/deoplete.nvim')
 call dein#add('Shougo/neosnippet')
 call dein#add('Shougo/neosnippet-snippets')
 call dein#add('w0rp/ale')
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')
 call dein#add('tpope/vim-surround')
 call dein#add('chemzqm/vim-jsx-improve')
 call dein#add('mhartington/nvim-typescript')
 call dein#add('posva/vim-vue')
 call dein#add('othree/jspc.vim')
 call dein#add('HerringtonDarkholme/yats.vim')
 call dein#add('dracula/vim')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on

let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_completed_snippet = 1

" airline
let g:airline_theme = 'wombat'
let g:airline#extensions#branch#enabled = 0 " needs fugitive to work
let g:airline#extensions#tabline#enabled = 1 
let g:airline_section_warning = '' 
let g:airline_section_y = '' 
let g:airline_section_x = ''
let g:airline_left_sep = ' ☯  '
let g:airline_right_sep = ' ☯  '
set laststatus=2 " always show statusbar

" javascript
let g:javascript_plugin_jsdoc = 1
let g:nvim_typescript#vue_support = 1
let g:jsx_ext_required = 0

" ALE
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1

" Moving between splits
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" run :call dein#install() to install dein and plugins

color dracula

syntax on
set termguicolors
set smartindent
set clipboard+=unnamedplus
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number relativenumber
set cursorline
set showmatch
set incsearch
set hlsearch
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set noswapfile
set noruler

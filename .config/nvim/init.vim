" dein
if &compatible
  set nocompatible
endif

call plug#begin('~/.vim/plugged')

Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'dracula/vim'

call plug#end()

filetype plugin indent on

" neosnippet
imap <C-space> <Plug>(neosnippet_expand_or_jump)
smap <C-space> <Plug>(neosnippet_expand_or_jump)
xmap <C-space> <Plug>(neosnippet_expand_target)
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" git grep
func GGitGrep(...)
  let save = &grepprg
  set grepprg=git\ grep\ -n\ $*
  let s = 'grep'
  for i in a:000
    let s = s . ' ' . i
  endfor
  exe s
  let &grepprg = save
endfun
command! -nargs=+ GitGrep execute 'silent call GGitGrep(<f-args>)' | copen
map <C-g> <Esc>:GitGrep 

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
" map <silent> <C-p> <Esc>:Lex<CR>

" NERDTree
let NERDTreeShowHidden = 1
map <C-n> :NERDTreeToggle<CR>

" ctrlp
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1

" Delete netrw when it is not in the window
autocmd FileType netrw setl bufhidden=wipe

" airline
"let g:airline_theme = 'wombat'
let g:airline#extensions#branch#enabled = 1 " needs fugitive to work
let g:airline#extensions#tabline#enabled = 1 
let g:airline_section_warning = '' 
let g:airline_section_y = '' 
let g:airline_section_x = ''
let g:airline_left_sep = ' ☯ '
let g:airline_right_sep = ' ☯ '
set laststatus=2 " always show statusbar

" move lines up and down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" move between buffers
map <C-h> <Esc>:bprev<CR>
map <C-l> <Esc>:bnext<CR>

" clear search highlight
map <C-c> <Esc>:noh<CR>

" javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" ALE
let g:ale_vue_vls_use_global = 1
let g:ale_fixers = {
\ 'javascript': ['standard']
\}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

syntax on
color dracula
set termguicolors
set scrolloff=10
set list
set listchars=space:.,tab:>>,trail:$
set smartindent
set clipboard+=unnamedplus
set completeopt=menu,menuone,preview,noselect,noinsert
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab
set number relativenumber
set cursorline
set showmatch
set incsearch
set hlsearch
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set noswapfile
set noruler

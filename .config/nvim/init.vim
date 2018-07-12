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
 call dein#add('neomake/neomake')
 call dein#add('ctrlpvim/ctrlp.vim')
 call dein#add('vim-airline/vim-airline')
 call dein#add('vim-airline/vim-airline-themes')
 call dein#add('tpope/vim-surround')
 call dein#add('othree/jspc.vim')
 call dein#add('sheerun/vim-polyglot')
 call dein#add('dracula/vim')

 call dein#end()
 call dein#save_state()
endif

filetype plugin indent on

" completion
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_completed_snippet = 1

" neosnippet
imap <C-space> <Plug>(neosnippet_expand_or_jump)
smap <C-space> <Plug>(neosnippet_expand_or_jump)
xmap <C-space> <Plug>(neosnippet_expand_target)
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" neomake
call neomake#configure#automake('w')
let g:neomake_markdown_enabled_makers = []

" git grep
func GitGrep(...)
  let save = &grepprg
  set grepprg=git\ grep\ -n\ $*
  let s = 'grep'
  for i in a:000
    let s = s . ' ' . i
  endfor
  exe s
  let &grepprg = save
endfun
command! -nargs=+ Ggrep execute 'silent call GitGrep(<f-args>)' | copen
map <C-g> <Esc>:Ggrep 

" netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
" map <silent> <C-p> <Esc>:Lex<CR>

" ctrlp
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1

" Delete netrw when it is not in the window
autocmd FileType netrw setl bufhidden=wipe

" airline
"let g:airline_theme = 'wombat'
let g:airline#extensions#branch#enabled = 0 " needs fugitive to work
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
let g:jsx_ext_required = 0

" ALE
let g:ale_fixers = {
\   'javascript': ['standard'],
\}
let g:ale_fix_on_save = 1

" run :call dein#install() to install dein and plugins

syntax on
color dracula
set termguicolors
set scrolloff=10
set list
set listchars=space:.,tab:>>,trail:$
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
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*
set noswapfile
set noruler

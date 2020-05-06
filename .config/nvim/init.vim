set packpath^=~/.vim
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-surround')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('scrooloose/nerdtree')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('itchyny/lightline.vim')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('dylanaraps/wal.vim')

filetype plugin indent on
syntax on
set wildmenu
set belloff=all
set backspace=indent,eol,start
set clipboard+=unnamedplus
set autoindent
set noexpandtab
set tabstop=8
set shiftwidth=8
set nowrap
set noswapfile
set nobackup
set noundofile
set notimeout
set noshowmode
set visualbell
set ignorecase smartcase
set hlsearch
set incsearch
set autoread
set hidden
set scrolloff=10
set sidescrolloff=10
set sidescroll=10
set splitright splitbelow
set laststatus=2
set wildignore+=*/node_modules/*,*/tmp/*,*/.vagrant/*
set grepprg=grep\ -r\ -n\ --exclude-dir=node_modules\ --exclude-dir=.git\ -I\ $*
set updatetime=100
set lazyredraw
set omnifunc=syntaxcomplete#Complete
colorscheme wal

command! EditVimrc edit $MYVIMRC
command! LoadVimrc source $MYVIMRC
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()
command! -nargs=+ GitGrep call GitGrepFunction(<f-args>)
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

function GitGrepFunction(...)
	let l:oldgrep = &grepprg
	let &grepprg = "git grep -n"
	silent execute "grep! ".join(a:000)
	let &grepprg = l:oldgrep
	silent execute "CtrlPQuickfix"
endfunction

let g:lightline = {
			\ 'colorscheme': 'wal',
			\ }
let g:ctrlp_working_path_mode = "ra"
let g:ctrlp_show_hidden = 1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"let g:ctrlp_root_markers = ['jsconfig.json']
let NERDTreeShowHidden=1
let mapleader=","
let g:coc_global_extensions = [
			\ 'coc-tsserver',
			\ 'coc-eslint',
			\ 'coc-prettier',
			\ 'coc-snippets',
			\ 'coc-emmet',
			\ 'coc-html',
			\ 'coc-css',
			\ 'coc-json'
			\ ]

nnoremap <Esc><Esc> <Esc>:noh<cr>
nnoremap <leader>b <Esc>:CtrlPBuffer<CR>
nnoremap <leader>f <Esc>:Prettier<CR>
nnoremap <C-b> <Esc>:NERDTreeToggle<CR>
nnoremap <C-h> <Esc>:bprev<CR>
nnoremap <C-l> <Esc>:bnext<CR>
nnoremap <leader>gg <Esc>:GitGrep<space>

autocmd FileType qf nnoremap <buffer> <CR> <CR>:cclose<CR>

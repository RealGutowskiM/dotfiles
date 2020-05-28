set packpath^=~/.vim
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-surround')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('itchyny/lightline.vim')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})
call minpac#add('editorconfig/editorconfig-vim')
call minpac#add('dylanaraps/wal.vim')

filetype plugin indent on
syntax enable
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
set noshowcmd
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
set path+=**
set wildmenu
set wildmode=list:longest,full
set wildoptions=pum
set wildignorecase
set wildignore+=**/node_modules/**,**/tmp/**,**/.vagrant/**,**/.git/**
set grepprg=grep\ -r\ -n\ --exclude-dir=node_modules\ --exclude-dir=.git\ -I\ $*
set updatetime=100
set lazyredraw
set signcolumn=yes
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
endfunction
function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

let g:lightline = {
			\ 'colorscheme': 'wal',
			\ }
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
nnoremap <leader>f <Esc>:Prettier<CR>
nnoremap <C-h> <Esc>:bprev<CR>
nnoremap <C-l> <Esc>:bnext<CR>
nnoremap <leader>gg <Esc>:GitGrep<space>
nnoremap <silent> K :call <SID>show_documentation()<CR>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd FileType qf nnoremap <silent> <buffer> <CR> <CR>:cclose<CR>
autocmd QuickFixCmdPost [^l]* nested copen
autocmd QuickFixCmdPost    l* nested lopen

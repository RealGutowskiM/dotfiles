" plugins
packadd minpac
call minpac#init()

call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-surround')
call minpac#add('sheerun/vim-polyglot')
call minpac#add('mhinz/vim-signify')
call minpac#add('scrooloose/nerdtree')
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})

" commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! GitStatus !clear && git status
command! GitLogShort call GitLogShortFunction()
command! GitLogFull call GitLogFullFunction()
command! GitDiff call GitDiffFunction()
command! -nargs=+ GitGrep call GitGrepFunction(<f-args>)
command! ModifyVimrc edit $MYVIMRC
command! LoadVimrc source $MYVIMRC

" functions
function GitLogShortFunction()
	silent execute "!clear &&
				\ git log --graph --all --oneline --color=always
				\ | less -r"
	redraw!
endfunction
function GitLogFullFunction()
	silent execute "!clear && git log --graph --all --color=always | less -r"
	redraw!
endfunction
function GitDiffFunction()
	silent execute "!clear && git diff --color=always | less -r"
	redraw!
endfunction
function GitGrepFunction(...)
	let l:oldgrep = &grepprg
	let &grepprg = "git grep -n"
	silent execute "grep! ".join(a:000)
	let &grepprg = l:oldgrep
	copen
	redraw!
endfunction
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
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
set updatetime=100
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
nnoremap <leader>gg <Esc>:GitGrep<space>
nnoremap <leader>gls <Esc>:GitLogShort<CR>
nnoremap <leader>glf <Esc>:GitLogFull<CR>
nnoremap <C-h> <Esc>:bprev<CR>
nnoremap <C-l> <Esc>:bnext<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <leader>a <Plug>(coc-codeaction)
inoremap <silent><expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" file browser
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_list_hide=netrw_gitignore#Hide()
let NERDTreeShowHidden=1

" completions
" use `:Format` to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" extensions
let g:coc_global_extensions = [
			\ 'coc-tsserver',
			\ 'coc-eslint',
			\ 'coc-snippets',
			\ 'coc-emmet',
			\ 'coc-html',
			\ 'coc-css',
			\ 'coc-json'
			\ ]

highlight clear
if exists("syntax_on")
	syntax reset
endif

let colors_name="oolory"

if &background ==# 'dark'
	hi SpecialKey	ctermfg=7
	hi NonText	ctermfg=7
	hi Directory	ctermfg=7
	hi ErrorMsg	ctermfg=7
	hi IncSearch	cterm=reverse ctermfg=7 ctermbg=none 
	hi Search	cterm=reverse ctermfg=11 ctermbg=none 
	hi MoreMsg	ctermfg=7
	hi ModeMsg	ctermfg=7
	hi LineNr	ctermfg=7
	hi Question	ctermfg=7
	hi StatusLine	cterm=none ctermfg=7 ctermbg=none
	hi StatusLineNC cterm=none ctermfg=15 ctermbg=none
	hi VertSplit	cterm=none ctermfg=12
	hi Title	ctermfg=7
	hi Visual	cterm=none ctermfg=7 ctermbg=13
	hi VisualNOS	cterm=none ctermfg=7 ctermbg=13
	hi WarningMsg	ctermfg=7
	hi WildMenu	cterm=bold ctermfg=7 ctermbg=12
	hi Folded	ctermfg=7
	hi FoldColumn	ctermfg=7
	hi DiffAdd	ctermfg=10 ctermbg=none
	hi DiffChange	ctermfg=13 ctermbg=none
	hi DiffDelete	ctermfg=9 ctermbg=none
	hi DiffText	ctermfg=11 ctermbg=none
	hi Comment	ctermfg=15
	hi Constant	ctermfg=15
	hi Keyword	cterm=bold ctermfg=7
	hi Special	ctermfg=7
	hi Identifier	cterm=none ctermfg=12
	hi Statement	cterm=bold ctermfg=7
	hi PreProc	ctermfg=7
	hi Type		ctermfg=7
	hi Underlined	ctermfg=7
	hi Ignore	ctermfg=7
	hi Error	ctermfg=7
else
	hi SpecialKey	ctermfg=0
	hi NonText	ctermfg=0
	hi Directory	ctermfg=0
	hi ErrorMsg	ctermfg=0
	hi IncSearch	ctermfg=0
	hi Search	ctermfg=0
	hi MoreMsg	ctermfg=0
	hi ModeMsg	ctermfg=0
	hi LineNr	ctermfg=0
	hi Question	ctermfg=0
	hi StatusLine	cterm=none ctermfg=0 ctermbg=none
	hi StatusLineNC cterm=none ctermfg=8 ctermbg=none
	hi VertSplit	cterm=none ctermfg=4
	hi Title	ctermfg=0
	hi Visual	cterm=none ctermfg=0 ctermbg=5
	hi VisualNOS	cterm=none ctermfg=0 ctermbg=5
	hi WarningMsg	ctermfg=0
	hi WildMenu	ctermfg=0
	hi WildMenu	cterm=bold ctermfg=0 ctermbg=4
	hi Folded	ctermfg=0
	hi FoldColumn	ctermfg=0
	hi DiffAdd	ctermfg=0 ctermbg=10
	hi DiffChange	ctermfg=0 ctermbg=13
	hi DiffDelete	ctermfg=0 ctermbg=9
	hi DiffText	ctermfg=0 ctermbg=11
	hi Comment	ctermfg=8
	hi Constant	ctermfg=8
	hi Keyword	cterm=bold ctermfg=0
	hi Special	ctermfg=0
	hi Identifier	cterm=none ctermfg=4
	hi Statement	cterm=bold ctermfg=0
	hi PreProc	ctermfg=0
	hi Type		ctermfg=0
	hi Underlined	ctermfg=0
	hi Ignore	ctermfg=0
	hi Error	ctermfg=0
endif

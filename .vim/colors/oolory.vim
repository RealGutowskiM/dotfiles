highlight clear
if exists("syntax_on")
	syntax reset
endif

let colors_name="oolory"

if &background ==# 'dark'
	hi SpecialKey	ctermfg=white
	hi NonText	ctermfg=white
	hi Directory	ctermfg=white
	hi ErrorMsg	ctermfg=white
	hi IncSearch	ctermfg=white
	hi Search	ctermfg=white
	hi MoreMsg	ctermfg=white
	hi ModeMsg	ctermfg=white
	hi LineNr	ctermfg=white
	hi Question	ctermfg=white
	hi StatusLine	ctermfg=white
	hi StatusLineNC ctermfg=white
	hi VertSplit	ctermfg=white
	hi Title	ctermfg=white
	hi Visual	ctermfg=white
	hi VisualNOS	ctermfg=white
	hi WarningMsg	ctermfg=white
	hi WildMenu	ctermfg=white
	hi Folded	ctermfg=white
	hi FoldColumn	ctermfg=white
	hi DiffAdd	ctermfg=white
	hi DiffChange	ctermfg=white
	hi DiffDelete	ctermfg=white
	hi DiffText	ctermfg=white
	hi Comment	ctermfg=grey
	hi Constant	ctermfg=grey
	hi Keyword	cterm=bold ctermfg=white
	hi Special	ctermfg=white
	hi Identifier	ctermfg=white
	hi Statement	cterm=bold ctermfg=white
	hi PreProc	ctermfg=grey
	hi Type		ctermfg=white
	hi Underlined	ctermfg=white
	hi Ignore	ctermfg=white
	hi Ignore	ctermfg=white
	hi Error	ctermfg=white
else
	hi SpecialKey	ctermfg=black
	hi NonText	ctermfg=black
	hi Directory	ctermfg=black
	hi ErrorMsg	ctermfg=black
	hi IncSearch	ctermfg=black
	hi Search	ctermfg=black
	hi MoreMsg	ctermfg=black
	hi ModeMsg	ctermfg=black
	hi LineNr	ctermfg=black
	hi Question	ctermfg=black
	hi StatusLine	ctermfg=black
	hi StatusLineNC ctermfg=black
	hi VertSplit	ctermfg=black
	hi Title	ctermfg=black
	hi Visual	ctermfg=black
	hi VisualNOS	ctermfg=black
	hi WarningMsg	ctermfg=black
	hi WildMenu	ctermfg=black
	hi Folded	ctermfg=black
	hi FoldColumn	ctermfg=black
	hi DiffAdd	ctermfg=black
	hi DiffChange	ctermfg=black
	hi DiffDelete	ctermfg=black
	hi DiffText	ctermfg=black
	hi Comment	ctermfg=grey
	hi Constant	ctermfg=grey
	hi Keyword	cterm=bold ctermfg=black
	hi Special	ctermfg=black
	hi Identifier	ctermfg=black
	hi Statement	cterm=bold ctermfg=black
	hi PreProc	ctermfg=grey
	hi Type		ctermfg=black
	hi Underlined	ctermfg=black
	hi Ignore	ctermfg=black
	hi Ignore	ctermfg=black
	hi Error	ctermfg=black
endif

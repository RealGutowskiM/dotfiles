" Vim color file - oolory
highlight clear
set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name = "oolory"

hi Normal cterm=NONE ctermfg=NONE ctermbg=NONE
hi Keyword cterm=NONE ctermfg=NONE ctermbg=NONE
hi Constant cterm=NONE ctermfg=NONE ctermbg=NONE
hi String cterm=NONE ctermfg=DarkGray ctermbg=NONE
hi Comment cterm=NONE ctermfg=Gray ctermbg=NONE
hi Number cterm=NONE ctermfg=NONE ctermbg=NONE
hi Error cterm=NONE ctermfg=Red ctermbg=NONE
hi ErrorMsg cterm=NONE ctermfg=Red ctermbg=NONE
hi Search cterm=NONE ctermfg=NONE ctermbg=Yellow
hi IncSearch cterm=reverse ctermfg=NONE ctermbg=Yellow
hi DiffChange cterm=NONE ctermfg=NONE ctermbg=NONE
hi DiffText cterm=bold ctermfg=Green ctermbg=LightGreen
hi DiffDelete cterm=bold ctermfg=Red ctermbg=LightRed
hi SignColumn cterm=NONE ctermfg=Blue ctermbg=NONE
hi SpellBad cterm=undercurl ctermfg=NONE ctermbg=NONE
hi SpellCap cterm=NONE ctermfg=NONE ctermbg=NONE
hi SpellRare cterm=NONE ctermfg=NONE ctermbg=NONE
hi WildMenu cterm=NONE ctermfg=NONE ctermbg=NONE
hi Pmenu cterm=NONE ctermfg=NONE ctermbg=DarkGray
hi PmenuThumb cterm=NONE ctermfg=NONE ctermbg=DarkGray
hi SpecialKey cterm=NONE ctermfg=NONE ctermbg=NONE
hi MatchParen cterm=NONE ctermfg=NONE ctermbg=NONE
hi CursorLine cterm=NONE ctermfg=NONE ctermbg=NONE
hi StatusLine cterm=NONE ctermfg=Blue ctermbg=NONE
hi StatusLineNC cterm=NONE ctermfg=Gray ctermbg=NONE
hi Visual cterm=reverse ctermfg=NONE ctermbg=NONE
hi TermCursor cterm=reverse ctermfg=NONE ctermbg=NONE
hi VertSplit cterm=NONE ctermfg=Blue ctermbg=NONE

highlight! link Boolean Normal
highlight! link Delimiter Normal
highlight! link Identifier Normal
highlight! link Title Normal
highlight! link Debug Normal
highlight! link Exception Normal
highlight! link FoldColumn Normal
highlight! link Macro Normal
highlight! link ModeMsg Normal
highlight! link MoreMsg Normal
highlight! link Question Normal
highlight! link Conditional Keyword
highlight! link Statement Keyword
highlight! link Operator Keyword
highlight! link Structure Keyword
highlight! link Function Keyword
highlight! link Include Keyword
highlight! link Type Keyword
highlight! link Typedef Keyword
highlight! link Todo Keyword
highlight! link Label Keyword
highlight! link Define Keyword
highlight! link DiffAdd DiffChange
highlight! link diffAdded DiffChange
highlight! link diffCommon Keyword
highlight! link Directory Keyword
highlight! link PreCondit Keyword
highlight! link PreProc Keyword
highlight! link Repeat Keyword
highlight! link Special Keyword
highlight! link SpecialChar Keyword
highlight! link StorageClass Keyword
highlight! link SpecialComment String
highlight! link CursorLineNr String
highlight! link Character Number
highlight! link Float Number
highlight! link Tag Number
highlight! link Folded Number
highlight! link WarningMsg Number
highlight! link iCursor SpecialKey
highlight! link SpellLocal SpellCap
highlight! link LineNr Comment
highlight! link NonText NonText 
highlight! link diffRemoved DiffRemove
highlight! link PmenuSbar Visual
highlight! link PmenuSel Visual
highlight! link VisualNOS Visual
highlight! link Cursor StatusLine
highlight! link Underlined SpellRare
highlight! link rstEmphasis SpellRare
highlight! link diffChanged DiffChange


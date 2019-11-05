" Vim color file - oolory
" Generated by http://bytefluent.com/vivify 2019-10-29
set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "oolory"

"hi Normal guifg=Black guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

"hi WildMenu -- no settings --
"hi SpecialComment -- no settings --
"hi Include -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi Debug -- no settings --
"hi PMenuSbar -- no settings --
hi SpecialChar guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Special guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Normal guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi CTagsImport guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi CTagsGlobalVariable guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Delimiter guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi EnumerationValue guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Character guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Float guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Number guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Boolean guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Define guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi EnumerationName guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Union guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Question guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi PreProc guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Constant guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi DefinedName guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi LocalVariable guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi CTagsClass guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Macro guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi clear guifg=Black guibg=White gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi IncSearch guifg=Black guibg=#ffffb2 guisp=#ffffb2 gui=NONE ctermfg=NONE ctermbg=229 cterm=NONE
hi SignColumn guifg=#ffddff guibg=White guisp=#446091 gui=NONE ctermfg=225 ctermbg=67 cterm=NONE
hi Typedef guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Title guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Folded guifg=Black guibg=NONE guisp=NONE gui=italic ctermfg=NONE ctermbg=NONE cterm=NONE
hi PreCondit guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi TabLineSel guifg=#004dff guibg=NONE guisp=NONE gui=bold ctermfg=27 ctermbg=NONE cterm=bold
hi StatusLineNC guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi NonText guifg=Black guibg=NONE guisp=NONE gui=italic ctermfg=NONE ctermbg=NONE cterm=NONE
hi DiffText guifg=Black guibg=#ffb8c6 guisp=#ffb8c6 gui=NONE ctermfg=NONE ctermbg=217 cterm=NONE
hi ErrorMsg guifg=#ff0033 guibg=NONE guisp=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi Identifier guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Conditional guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi StorageClass guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Todo guifg=#7aa2ff guibg=NONE guisp=NONE gui=NONE ctermfg=111 ctermbg=NONE cterm=NONE
hi LineNr guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
hi StatusLine guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Label guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi PMenuSel guifg=Black guibg=#c2d4ff guisp=#c2d4ff gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Search guifg=Black guibg=#ffffb2 guisp=#ffffb2 gui=NONE ctermfg=NONE ctermbg=229 cterm=NONE
hi Statement guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi SpellRare guifg=Black guibg=#0d1e24 guisp=#0d1e24 gui=underline ctermfg=NONE ctermbg=235 cterm=underline
hi Comment guifg=#aaaaaa guibg=NONE guisp=NONE gui=italic ctermfg=248 ctermbg=NONE cterm=NONE
hi Operator guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi CursorLine guifg=Black guibg=#193030 guisp=#193030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi TabLineFill guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi WarningMsg guifg=Black guibg=#919182 guisp=#919182 gui=NONE ctermfg=NONE ctermbg=101 cterm=NONE
hi VisualNOS guifg=Black guibg=#d8d8ff guisp=#d8d8ff gui=underline ctermfg=NONE ctermbg=189 cterm=underline
hi DiffDelete guifg=Black guibg=#ffb8c6 guisp=#ffb8c6 gui=NONE ctermfg=NONE ctermbg=217 cterm=NONE
hi ModeMsg guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi CursorColumn guifg=Black guibg=#193030 guisp=#193030 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Function guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi FoldColumn guifg=Black guibg=NONE guisp=NONE gui=italic ctermfg=NONE ctermbg=NONE cterm=NONE
hi Visual guifg=Black guibg=#d8d8ff guisp=#d8d8ff gui=NONE ctermfg=NONE ctermbg=189 cterm=NONE
hi MoreMsg guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi SpellCap guifg=Black guibg=#0d1e24 guisp=#0d1e24 gui=underline ctermfg=NONE ctermbg=235 cterm=underline
hi VertSplit guifg=Black guibg=#576770 guisp=#576770 gui=bold ctermfg=NONE ctermbg=66 cterm=bold
hi Exception guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Keyword guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Type guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi DiffChange guifg=Black guibg=#ffb8c6 guisp=#ffb8c6 gui=NONE ctermfg=NONE ctermbg=217 cterm=NONE
hi Cursor guifg=Black guibg=#004dff guisp=#004dff gui=NONE ctermfg=NONE ctermbg=27 cterm=NONE
hi SpellLocal guifg=Black guibg=#0d1e24 guisp=#0d1e24 gui=underline ctermfg=NONE ctermbg=235 cterm=underline
hi Error guifg=#ff0033 guibg=NONE guisp=NONE gui=NONE ctermfg=197 ctermbg=NONE cterm=NONE
hi PMenu guifg=Black guibg=#eeeeee guisp=#eeeeee gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi SpecialKey guifg=Black guibg=NONE guisp=NONE gui=italic ctermfg=NONE ctermbg=NONE cterm=NONE
hi Tag guifg=#ffddff guibg=NONE guisp=NONE gui=NONE ctermfg=225 ctermbg=NONE cterm=NONE
hi String guifg=#6b7a88 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=Black guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi MatchParen guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Repeat guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi SpellBad guifg=Black guibg=#0d1e24 guisp=#0d1e24 gui=underline ctermfg=NONE ctermbg=235 cterm=underline
hi Directory guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Structure guifg=#ffddff guibg=NONE guisp=NONE gui=bold ctermfg=225 ctermbg=NONE cterm=bold
hi Underlined guifg=Black guibg=#0d1e24 guisp=#0d1e24 gui=underline ctermfg=NONE ctermbg=235 cterm=underline
hi DiffAdd guifg=Black guibg=#b6f5cf guisp=#b6f5cf gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLine guifg=Black guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi cursorim guifg=#ffddff guibg=#446091 guisp=#446091 gui=NONE ctermfg=225 ctermbg=67 cterm=NONE
"hi NERDTreeDir guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeFile guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeUp guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeBookmark guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeBookmarkName guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeOpenable guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeClosable guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeIgnore guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeRO guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeFlags guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeLinkTarget guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeLinkFile guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
"hi NERDTreeLinkDir guifg=#004dff guibg=NONE guisp=NONE gui=NONE ctermfg=27 ctermbg=NONE cterm=NONE
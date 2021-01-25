setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab autoindent smartindent

setlocal include=^\\t\\%(\\w\\+\\s\\+\\)\\=\"\\zs[^\"]*\\ze\"$

setlocal suffixesadd+=.go

command! MakeTags !ctags -R .

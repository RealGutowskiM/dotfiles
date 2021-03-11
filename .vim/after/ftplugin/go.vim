setlocal shiftwidth=4 tabstop=4 softtabstop=4 noexpandtab autoindent smartindent

setlocal include=^\\t\\%(\\w\\+\\s\\+\\)\\=\"\\zs[^\"]*\\ze\"$

setlocal suffixesadd+=.go

command! MakeTags !ctags -R .

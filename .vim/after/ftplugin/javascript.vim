setlocal shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab autoindent smartindent

setlocal include=\\%(\\<require\\s*(\\s*\\\|\\<import\\>[^;\"']*\\)[\"']\\zs[^\"']*

setlocal suffixesadd+=.ts,.tsx,.js,.mjs,.jsx,.json

command! MakeTags !ctags -R --exclude=node_modules --exclude=.git --exclude=.vagrant --exclude=package-lock.json .
command! Format !npm run fix

setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab autoindent smartindent

setlocal include=\\%(\\<require\\s*(\\s*\\\|\\<import\\>[^;\"']*\\)[\"']\\zs[^\"']*

setlocal suffixesadd+=.ts,.tsx,.js,.mjs,.jsx,.json

command! MakeTags !ctags -R --exclude=node_modules --exclude=.git --exclude=.vagrant --exclude=package-lock.json .
command! Format !npm run fix

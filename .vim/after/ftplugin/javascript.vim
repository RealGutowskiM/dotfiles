set shiftwidth=8 tabstop=8 softtabstop=8 noexpandtab autoindent smartindent

setlocal include=\\%(\\<require\\s*(\\s*\\\|\\<import\\>[^;\"']*\\)[\"']\\zs[^\"']*

command! MakeTags !ctags -R --exclude=.git --exclude=.vagrant --exclude=package-lock.json .
command! Format !npm run fix

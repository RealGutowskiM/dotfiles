@echo off

doskey refreshconfig=%userprofile%\\cmdrc.bat

doskey gs=git status $*
doskey gl=git log --graph --oneline --all $*

doskey pwd=cd
doskey clear=cls
doskey grep=findstr $*
doskey ls=dir /O:N $*

set PROMPT=$T$H$H$H$S-$S$P$_$$$S
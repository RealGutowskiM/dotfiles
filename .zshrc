export LC_ALL=en_GB.UTF-8

# Add local sbin to path
export PATH="$PATH:/usr/local/sbin"

# Modify the prompt
#export RPROMPT='%W %t'
export PROMPT='%m $%F{blue}_%f '

# Aliases
alias refresh-terminal-config='source ~/.zshrc'
alias edit-terminal-config='vi ~/.zshrc'
alias edit-vim-config='vi ~/.vim/vimrc'
alias gs='git status'
alias gls='git log --graph --all --oneline'
alias glf='git log --graph --all'

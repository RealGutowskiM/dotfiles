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
alias git='/usr/bin/git'
alias vi='/usr/local/bin/vim'
alias vim='/usr/local/bin/vim'
alias gs='git status'
alias gls='git log --graph --all --oneline'
alias glf='git log --graph --all'
alias vagrant='/usr/local/bin/vagrant'

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

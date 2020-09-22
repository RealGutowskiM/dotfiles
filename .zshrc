export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export LC_ALL=en_GB.UTF-8

# Modify the prompt
#export RPROMPT='%W %t'
export PROMPT='%m%F{blue}%#%f '

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
alias code='/usr/local/bin/code'
alias vagrant='/usr/local/bin/vagrant'

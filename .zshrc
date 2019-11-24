export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export LC_ALL=en_GB.UTF-8

# Modify the prompt
export RPROMPT='%W %t'
export PROMPT='%F{blue}╭%f %~
%F{blue}╰%f $%F{blue}_%f '

# Aliases
alias refresh-terminal-config='source ~/.zshrc'
alias edit-terminal-config='vim  ~/.zshrc'
alias ls='ls -alhF'
alias gs='git status'
alias gls='git log --graph --all --oneline'
alias glf='git log --graph --all'
alias dsp='docker system prune -f'

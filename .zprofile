export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.pyenv/shims:$PATH

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(rbenv init -)"


# Alias
alias gs='git status --short --branch'
alias glog='git log --oneline'
alias gf='git fetch origin --prune'
alias gps='git push'
alias gpl='git pull'
alias gb='git branch -a'
alias gc='git checkout'

alias dc='docker-compose'
alias de='docker exec -it'

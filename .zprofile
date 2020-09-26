export LANG=ja_JP.UTF-8

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.pyenv/shims:$PATH

eval "$(rbenv init -)"

# Alias
if [ "$(uname)" = 'Darwin' ]; then
  alias ls='ls -G'
fi

alias gs='git status --short --branch'
alias glog='git log --oneline'
alias gf='git fetch origin --prune'
alias gps='git push'
alias gpl='git pull'
alias gb='git branch -a'
alias gc='git checkout'

alias dc='docker-compose'
alias de='docker exec -it'

# Alias
if [ "$(uname)" = 'Darwin' ]; then
  alias ls='ls -G'
fi

alias sed="gsed"

alias gs="git status -s"
alias gpl="git pull"
alias gf="git fetch --prune"
alias gbc="git branch --merged|grep -v '\*|develop|master|main|production'|xargs git branch -d"

alias dc="docker compose"

alias curlj="curl -H 'Content-type: application/json' -s"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# Set Homebrew's sbin before /usr/sbin
eval "$(pyenv init --path)"
# eval "$(rbenv init -)"

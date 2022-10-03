# eval "$(rbenv init -)"
# eval "$(pyenv init --path)"

# Alias
if [ "$(uname)" = 'Darwin' ]; then
  alias ls='ls -G'
fi

alias gs="git status -s"
alias gpl="git pull"
alias gf="git fetch --prune"
alias gbc="git branch --merged|egrep -v '\*|develop|master|main'|xargs git branch -d"

alias sed="gsed"

alias dc="docker compose"

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

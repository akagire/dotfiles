export LANG=ja_JP.UTF-8

autoload -Uz compinit && compinit

setopt auto_cd
setopt auto_pushd
setopt correct
setopt list_packed

# n configure
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

### zplug configure
source ~/.zplug/init.zsh

# zplug initialize
zplug "plugins/git", from:oh-my-zsh

# zplug self manage
zplug "zplug/zplug", hook-build:"zplug --self-manage"

# theme
zplug "mafredri/zsh-async", from:github
zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme

# syntax highlight
zplug "zsh-users/zsh-syntax-highlighting"

# history
zplug "zsh-users/zsh-history-substring-search"

# code complrete
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"

if ! zplug check --verbose; then
	printf "Install? [Y/n]: "
	if read -q; then
		echo; zplug install
	fi
fi

# Then, source plugins and add comment to $PATH
zplug load

# The next line updates PATH for the Google Cloud SDK. It's for mac only
if [ -f '/Users/eguchi/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/eguchi/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud. It's for mac only
if [ -f '/Users/eguchi/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/eguchi/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/usr/local/sbin:$PATH"

# for XXXX file service
# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# export PIPENV_VENV_IN_PROJECT=true

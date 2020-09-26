export LANG=ja_JP.UTF-8

setopt auto_cd

# nodenv configure
eval "$(nodenv init -)"

### zplug configure
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

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

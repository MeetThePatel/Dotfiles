# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#
ZSH_THEME="tbdzt"

plugins=(
	git
	macos
	zsh-autosuggestions
	you-should-use
	zsh-syntax-highlighting
)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias tree="tree -a --si -C"
alias ls="exa --classify --long --header --binary --time modified --git --all --sort=name --group-directories-first"

BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="/usr/local/opt/openjdk/bin:$PATH"

# opam configuration
[[ ! -r /Users/meet/.opam/opam-init/init.zsh ]] || source /Users/meet/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
export PATH="/usr/local/opt/libpq/bin:$PATH"

export MODIN_ENGINE="ray"

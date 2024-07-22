source $HOMEBREW_PREFIX/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

autoload -U colors && colors	# Load colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}mac %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
# compinit
_comp_options+=(globdots)		# Include hidden files.

bindkey -v
bindkey '^I' menu-select

export KEYTIMEOUT=1

# Ruby exports
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"


alias ls='exa -l --color=always --group-directories-first --icons'
alias la='exa -al --color=always --group-directories-first --icons'
alias lt='exa -aT --color=always --group-directories-first --icons'
alias l.='exa -a | egrep "^\."'

#git aliases
alias gitlog="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"

source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export ZSH_SUGGEST_STRATEGY="all"

PATH="$PATH:/Users/abhi/.cargo/bin"

alias rm="ERROR"
alias remove=~/.local/bin/remove

alias v.='nvim .'
alias v='nvim'

alias retrace8="~/Library/Android/sdk/tools/proguard/bin/retrace.sh"

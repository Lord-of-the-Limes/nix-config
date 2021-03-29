# history
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch notify
unsetopt autocd beep

# tab complete stuff
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Vi mode
bindkey -v

# use vi keys in menuselect mode
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'j' vi-down-line-or-history

# use different cursors for insert and command mode
# don't ask me how this works
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[2 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[6 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[6 q"
}
zle -N zle-line-init
echo -ne '\e[6 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[6 q' ;} # Use beam shape cursor for each new prompt.

# set prompt colors
if [[ $(whoami) == 'root' ]]
then
	p_color='red'
	rp_color='red'
else
	p_color='green'
	rp_color='cyan'
fi

# set prompts
PROMPT='%B%F{'$p_color'}%n@%M%f%b %(!.#.$) ' # 'user@host $ ' on the left
RPROMPT='%B%F{'$rp_color'}%~%f%b' # working dir on the right
zle_highlight=(default:bold) # display typed commands in bold

# add some things to path
new_paths=':'$HOME'/.bin/'
PATH=$PATH$new_paths

# Aliases
alias ls='ls --human-readable --color=auto --group-directories-first'
alias ll='ls -l'
alias lal='ls -Al'
alias less='less --RAW-CONTROL-CHARS' # displays only ANSI color escape sequences

# Pacman
alias pacman='pacman --color=always'

# Zathura
alias zathura='zathura --fork'

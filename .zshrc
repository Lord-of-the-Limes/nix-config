# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch notify
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install

if [[ $(whoami) == 'root' ]]
then
	p_color='red'
	rp_color='red'
else
	p_color='green'
	rp_color='cyan'
fi

PROMPT='%B%F{'$p_color'}%n@%M%f%b %(!.#.$) ' # 'user@host $ ' on the left
RPROMPT='%B%F{'$rp_color'}%~%f%b' # working dir on the right
zle_highlight=(default:bold) # set typed commands to bold

# Aliases
alias ls='ls --human-readable --color=auto --group-directories-first'
alias lal='ls -Al'
alias less='less --RAW-CONTROL-CHARS' # displays only ANSI color escape sequences

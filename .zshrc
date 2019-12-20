# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch notify
unsetopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ian/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

PLAN9=/home/ian/src/repos/plan9port; export PLAN9
PATH=.:$HOME/bin:/usr/local/bin/:/usr/bin:/bin:/usr/local/games:/usr/games:/home/ian/.cargo/bin

PROMPT='%B%F{green}%n@%M%f%b %(!.#.$) ' # 'user@host $ ' on the left
RPROMPT='%B%F{cyan}%~%f%b' # working dir on the right
zle_highlight=(default:bold) # set typed commands to bold

# Aliases
alias ls='ls --human-readable --color=auto --group-directories-first'
alias lal='ls -Al'
alias less='less --RAW-CONTROL-CHARS' # displays only ANSI color escape sequences
#alias acme='SHELL=/bin/rc PATH=$PLAN9/bin:/usr/local/bin:/usr/bin:/bin: acme -m /mnt/acme -f /mnt/font/Hack\ Regular/11a/font'
alias 9term="prompt='
% ' 9term -f $HOME/.fonts/Hack-Regular/14a/font rc"


PLAN9=/home/ian/src/repos/plan9port #export PLAN9
PATH=$PATH:$PLAN9/bin #export PATH

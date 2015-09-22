# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#alias ls='ls'
#alias ll='pwd && ls -lh'
alias grep='grep --color -n'
alias cddev='cd /home/httpd/ss'

# http://bashrcgenerator.com permet de généré un prompt à ces couleurs !
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h\[$(tput sgr0)\]\[\033[38;5;43m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]"

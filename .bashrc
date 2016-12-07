# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#alias ls='ls'
#alias ll='pwd && ls -lh'
alias grep='grep --color' # l'option -n ajoute la ligne
alias cddev='cd /home/httpd/ss'
alias conflict='git s |grep UU'
alias cdback='cd /home/httpd/ss/backoffice'
alias cdariane='cd /home/httpd/ss/ariane'
alias cdcore='cd /home/httpd/ss/core'
alias droits='sudo chown -R ss:info /home/httpd/ss && chmod -R g+rwx /home/httpd/ss'
alias tree='tree -C'
alias dariane='sudo chown -R ss:info /home/httpd/ss/ariane && sudo chmod -R 777 /home/httpd/ss/ariane/app/cache/  && sudo chmod -R 777 /home/httpd/ss/ariane/app/logs/ && sudo chmod -R g+w /home/httpd/ss/ariane && sudo chown -R ss:info /home/httpd/ss/core && sudo chmod -R 777 /home/httpd/ss/core/app/cache/ && sudo chmod -R 777 /home/httpd/ss/core/app/logs/ && sudo chmod -R g+w /home/httpd/ss/core'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gs='git status'
alias g='git status -sb&&git diff --stat'
#alias composer='php /home/app/bin/composer.phar'
alias devmaj='cdariane && git fetch -p && cdcore && git fetch -p'
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h\[$(tput sgr0)\]\[\033[38;5;43m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]"
#export PATH=/home/app/bin:$PATH
# Add git branch if its present to PS1
# parse_git_branch() {
# 	 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
#  }
#  if [ "$color_prompt" = yes ]; then
# 	  PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '
#   else
# 	   PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
#    fi
# unset color_prompt force_color_prompt
source ~/bash_gitprompt

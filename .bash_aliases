alias grep='grep -n --color'
alias tree='tree -C'
alias ll='ls -lh --color'
alias l='ls -alh --color'
alias ls='ls --color'

# Git alias
alias gs='git status'
alias g='git status -sb&&git diff --stat'
alias gd='git diff'
alias gf='git fetch -p'
alias grb='git rebase'
alias gdc='git diff --cached'
alias ga='git add -p'
alias gap='git add -p'
alias gc='git commit'
alias conflict='git s |grep UU'

# Docker alias
alias dps='docker ps'
alias dpa='docker ps -a'
alias di='docker images'
alias dcup='docker-compose up -d --build'
alias dcstop='docker-compose stop'
alias dcrm='docker-compose stop;docker-compose rm -f'
alias dcps='docker-compose ps'
alias dinfo='docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive'
alias dive=dinfo

# tricks
alias meteo='curl wttr.in/Paris?format=v2'
alias weather='curl wttr.in/Paris?format=v2'

# STEP 2: CONFIGURE THE PROMPT
# ============================

export TZ=Europe/Paris

export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWSTASHSTATE=1 GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM=verbose GIT_PS1_DESCRIBE_STYLE=branch GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_HIDE_IF_PWD_IGNORED=1

# Colorful prompt for Bash!
export PS1='\[\e[0;36m\][\A] \u@\e[93m\h\e[0m:\[\e[0m\e[0;32m\]\W\[\e[1;33m\]$(__git_ps1 " (%s)")\[\e[0;37m\] \$\[\e[0m\] '
 
# Unrelated but useful: avoid auto-édit on successful merges, starting with Git 2.0
export GIT_MERGE_AUTOEDIT=no

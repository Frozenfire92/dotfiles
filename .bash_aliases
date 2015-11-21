# grep colorization
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls aliases
alias ls='ls --color'
alias ll='ls -alF --color'
alias la='ls -A --color'
alias l='ls -al --color'

# git aliases
alias gitcl='git clone'
alias gita='git add -A'
alias gits='git status'
alias gitl='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gitd='git diff'
alias gitds='git diff --staged'

# system
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e" #searchable process table
alias mkdir="mkdir -pv" #nested directory
alias histg="history | grep" #searchable history
alias top="htop"
alias myip="curl http://ipecho.net/plain; echo"
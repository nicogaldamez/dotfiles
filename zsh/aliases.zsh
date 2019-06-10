# reload zsh config
alias reload!='source ~/.zshrc'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

alias readlink=greadlink

# Git
alias glod='git pull origin develop'
alias gpod='git push origin develop'
alias glom='git pull origin master'
alias gpom='git push origin master'
alias glos='git pull origin staging'
alias gpos='git push origin staging'

# Git flow
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
alias gfrs='git flow release start'
alias gfrf='git flow release finish'

# Tmux
alias tms='tmuxinator start'
alias tma='tmux a'
alias tmn='tmux n'
alias tml='tmux list-sessions'
alias tmk='tmux kill-session -t'

# Filesystem aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="ls -lah ${colorflag}"
alias la="ls -AF ${colorflag}"
alias ll="ls -lFh ${colorflag}"
alias lld="ls -l | grep ^d"
alias rmf="rm -rf"

# Helpers
alias grep='grep --color=auto'
alias df='df -h' # disk free, in Gigabytes, not bytes
alias du='du -h -c' # calculate disk usage for a folder

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""

# Recursively delete `.DS_Store` files
alias cleanup="find . -name '*.DS_Store' -type f -ls -delete"

# File size
alias fs="stat -f \"%z bytes\""

# Mina
alias rake="noglob rake"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Common aliases
alias zshconfig="vim ~/.zshrc"
alias stop_psql='pg_ctl -D /usr/local/var/postgres -l logfile stop -m fast'
alias start_psql='pg_ctl -D /usr/local/var/postgres -l logfile start'
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list
alias grep='grep --color'
alias gb="git for-each-ref --sort=committerdate refs/heads/
  --format='%(HEAD) %(color:yellow)%(refname:short)%(color:reset) |
    %(authorname) |
      (%(color:green)%(committerdate:relative)%(color:reset))|
        %(contents:subject) ' | column -t -s '|'"

# Command line head / tail shortcuts
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g L="| less"

# Ctags
alias ctags="`brew --prefix`/bin/ctags"

# Dir aliases
alias galtec='cd ~/code/Galtec/galtec'
alias ojos='cd ~/code/ojos_app'
alias snappler='cd ~/code/Snappler'
alias felanix='cd ~/code/Felanix/felanix'
alias lupacan='cd ~/code/Snappler/Lupacan/lupacan'
alias imaginan='cd ~/code/Imaginan/imaginan'
alias codedir='cd ~/code/'

# Rails
alias precompile='RAILS_ENV=production bundle exec rake assets:precompile'
alias rdbm='bundle exec rake db:migrate'




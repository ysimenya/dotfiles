# taken from the LinuxNoob forums
alias st='stterm # -f <font name> -g <geometry>'

alias upd='sudo apt-get update'
alias upg='sudo apt-get update && sudo apt-get upgrade'
alias purge='sudo apt-get purge'
alias search='apt-cache search'
alias policy='apt-cache policy'
alias depends='apt-cache depends'
alias ins='sudo apt-get install'

## Space on drive
alias disk='du -S | sort -n -r |more'

# search
alias where="which"
alias what="apropos"
alias apr="apropos"
alias ff="find . -type f -name"

# navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../../"
alias ......="cd ../../../../.."
alias fonts="cd /usr/share/fonts"

#### SAFETY ####
alias rm='rm -Iv --preserve-root'
alias mv='mv -iv'
alias cp='cp -iv'
alias ln='ln -i'

alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

alias shred='shred -n 100 -z -v -u'

#### REBOOT/SHUTDOWN ####
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# alias to install iceweasel aurora - safe to remove after use
#alias alpha='sudo apt-get update && sudo apt-get install -t experimental iceweasel'

alias ls='ls -F --color=auto --group-directories-first'
alias la='ls -A'
alias ll='ls -lrta'
alias l='ls -lrt'

alias grep='grep --color=auto'
alias ccat='highlight --out-format=ansi'

alias md='mkdir -p -v'
alias rd='rmdir -v'

alias manb='man -H'
alias swr="mpg123 -C -q -@ http://mp3-live.swr.de/swr1bw_s.m3u &"
alias swr1='mpg123 -C -q -@ http://mp3-live.swr.de/swr1bw_s.m3u'

## Internet
alias yt='youtube-dl --add-metadata -ic' # Dwload video link
alias yta='youtube-dl --add-metadata -xic' # Dwload only audio
alias ehtspeed='speedometer -r eth1'

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
alias userlist="cut -d: -f1 /etc/passwd"

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

alias ccat='highlight --out-format=ansi'
alias df='df -h'
alias free="free -mht"
alias grep='grep --color=auto'
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

alias md='mkdir -p -v'
alias rd='rmdir -v'

alias manb='man -H'
alias swr="mpg123 -C -q -@ http://mp3-live.swr.de/swr1bw_s.m3u &"
alias swr1='mpg123 -C -q -@ http://mp3-live.swr.de/swr1bw_s.m3u'

## Internet
alias ehtspeed='speedometer -r eth1'
alias wget="wget -c"
alias yt='youtube-dl --add-metadata -ic' # Dwload video link
alias yta='youtube-dl --add-metadata -xic' # Dwload only audio
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Aliases for software managment
# pacman or pm
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'

# yay as aur helper - updates everything
alias pksyua="yay -Syu --noconfirm"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#improve png
alias fixpng="find . -type f -name \"*.png\" -exec convert {} -strip {} \;"

#add new fonts
alias fc='sudo fc-cache -fv'

#copy/paste all content of /etc/skel over to home folder - Beware
alias skel='cp -rf /etc/skel/.* ~'
#backup contents of /etc/skel to hidden backup folder in home/user
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'

#copy bashrc-latest over on bashrc - cb= copy bash
alias cb="cp ~/.bashrc-latest ~/.bashrc && source ~/.bashrc"

#quickly kill conkies
alias kc='killall conky'

#hardware info --short
alias hw="hwinfo --short"

#skip integrity check
alias yayskip='yay -S --mflags --skipinteg'
alias trizenskip='trizen -S --skipinteg'

#check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

#get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

#mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

#shopt
if [ -n "$BASH_VERSION" ]; then
  shopt -s autocd # change to named directory
  shopt -s cdspell # autocorrects cd misspellings
  shopt -s cmdhist # save multi-line commands in history as single line
  shopt -s dotglob
  shopt -s histappend # do not overwrite history
  shopt -s expand_aliases # expand aliases
fi


#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -100"

#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

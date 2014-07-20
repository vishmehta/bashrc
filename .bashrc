
#-------------------------------------------------------------
# COLOURS
#-------------------------------------------------------------

PBLACK="\[\033[0;30m\]"
PBLACKBOLD="\[\033[1;30m\]"
PRED="\[\033[0;31m\]"
PREDBOLD="\[\033[1;31m\]"
PGREEN="\[\033[0;32m\]"
PGREENBOLD="\[\033[1;32m\]"
PYELLOW="\[\033[0;33m\]"
PYELLOWBOLD="\[\033[1;33m\]"
PBLUE="\[\033[0;34m\]"
PBLUEBOLD="\[\033[1;34m\]"
PPURPLE="\[\033[0;35m\]"
PPURPLEBOLD="\[\033[1;35m\]"
PCYAN="\[\033[0;36m\]"
PCYANBOLD="\[\033[1;36m\]"
PWHITE="\[\033[0;37m\]"
PWHITEBOLD="\[\033[1;37m\]"

#-------------------------------------------------------------
# PROMPT
#-------------------------------------------------------------

PSUSERNAME="\[\033]0;\u@\h:\w\007\]\[\033[0;32m\]\u@\h"
PLOCATION="\[\033[0;33m\]\w$ \[\033[00m\]"

PS1="$PSUSERNAME$PGREENBOLD:$PLOCATION"

#http://www.understudy.net/custom.html#C_shell
#http://www.cyberciti.biz/tips/howto-linux-unix-bash-shell-setup-prompt.html
#COLOURS - http://www.cyberciti.biz/faq/bash-shell-change-the-color-of-my-shell-prompt-under-linux-or-unix/
#\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]\u@\h -> username @ hostname
#\[\033]0;\u@\h:\w\007\]\[\033[01;33m\]($BOX) -> box
#\[\033]0;\u@\h:\w\007\]\[\033[01;32m\]: -> :
#\[\033[01;34m\]\w$ \[\033[00m\]" -> current directory

#-------------------------------------------------------------
# PROFILES/PATHS/BASHRC
#----------------------------------------------------------

alias epaths='echo $PATH'
alias profileslocation='echo /etc/bashrc; echo /etc/profile; echo ~/.bashrc; echo ~/.bash_profile; echo ~/.profile; echo ~/MacOSX/environment.plist'

#-------------------------------------------------------------
# SAFETY NETS
#-------------------------------------------------------------

alias grep='grep --color=auto -i -n'
alias egrep='egrep --color=auto -i -n'
alias fgrep='fgrep --color=auto -i -n'

alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'

#-------------------------------------------------------------
# BASIC
#-------------------------------------------------------------

#alias bashrc='home; nano .bashrc'
alias bashrc='vim ~/.bashrc'

mygrepalias() { alias | grep $1
}
alias aliasgrep=mygrepalias
alias a=mygrepalias
#mytree() { echo 'tree -L <number>'; tree -L $1
#}
#alias treel=mytree
#alias tree='tree -L 2'
#alias tree='find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g''
alias r='echo 'repeating'; fc -e -' # typing ‚Äòr‚Äô ‚Äòr‚Äôepeats the last command
alias c='clear'
alias his='history'
myhis() { his | grep $1
}
alias h=myhis
alias r='echo 'repeating'; fc -e -' # typing ‚Äòr‚Äô ‚Äòr‚Äôepeats the last command
alias hcl='echo 'clearhistoryandscreen'; history -c; c;'
alias j='jobs -l'
#alias l='logout'
alias x='exit'
alias mount='mount |column -t'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias count='ls | wc -l'
alias deleteolderthanXdays='find FOLDER -type f -mtime +Xdays -exec rm {} \;'
mysymlink() { echo 'ln -s <destination> <linkname>'; ln -s $1 $2
}
alias symlink=mysymlink
alias symlink2='ln -s <destination> <linkname>'
alias variables='printenv'
alias newfile='touch newfile.txt'
alias calculator='bc'
alias calc='calculator'
mywatchfile() { tail -F $1
}
alias watchfile='mywatchfile'

#-------------------------------------------------------------
# The 'ls' family (this assumes you use a recent GNU ls).
#-------------------------------------------------------------
# Add colors for filetype and  human-readable sizes by default on 'ls':
#alias ls='ls -h --color'
#alias lx='ls -lXB'         #  Sort by extension.
#alias lk='ls -lSr'         #  Sort by size, biggest last.
#alias lt='ls -ltr'         #  Sort by date, most recent last.
#alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
#alias lu='ls -ltur'        #  Sort by/show access time,most recent last.

# The ubiquitous 'll': directories first, with alphanumeric sorting:
#alias ll="ls -lv --group-directories-first"
#alias lm='ll |more'        #  Pipe through 'more'
#alias lr='ll -R'           #  Recursive ls.
#alias la='ll -A'           #  Show hidden files.
#alias tree='tree -Csuh'    #  Nice alternative to 'recursive ls' ...

alias ll='echo sort by name; ls -lh --color=auto'    #sort by name
alias lt='echo sort by date ; ls -ltrh'  #sort by date
alias ltyear='echo sort by date and inc year ; ls -ltr --full-time'
alias ltr='lt'
alias ldate='lt'
alias ld='echo list directories; ls -ld' #list directories
alias lx='echo sort by extension; ls -lXBh' #sort by extension
alias lk='echo sort by size; ls -lSrh' #sort by size
alias lsize='lk'
alias la='ls -la'
alias lhidden='la'
alias lh='la'
alias ll="ls -lh"
#alias ls='ls -hF --color' # add colors for filetype recognition
alias la='echo show hidden; ls -Alh' # show hidden files
alias lx='echo sort by extension; ls -lXBh' # sort by extension
alias lc='echo sort by and show change time, most recent last; ls -ltcrh' # sort by and show change time, most recent last
alias lu='echo sort by and show access time, most recent last; ls -lturh' # sort by and show access time, most recent last
alias lm='echo pipe through 'more'; ls -alh |more' # pipe through 'more'
alias lr='echo recursive ls; ls -lRh' # recursive ls

#-------------------------------------------------------------
# GENERIC LOCATIONS
#-------------------------------------------------------------

alias home='cd ~'
alias desktop='cd ~/Desktop'
alias .='cd ../'
alias ..='.;.'
alias ...='.;..'
alias ....='.;...'
alias .....='.;....'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

#-------------------------------------------------------------
# INFO
#-------------------------------------------------------------

alias ipaddrshow='ip addr show'
alias ipconfig='echo The first one is the name server that its looking it up against; echo The second one is the IP of the address youve looked up; hostname | nslookup'
alias iplookup='ipconfig'
alias ip='ipconfig'
alias meminfo='echo pass options to free; echo free -m -l -t; free -m -l -t'
alias psmem='echo get top process eating memory; echo ps auxf | sort -nr -k 4; ps auxf | sort -nr -k 4'
alias psmem10='echo get top process eating memory; echo ps auxf | sort -nr -k 4 | head -10; ps auxf | sort -nr -k 4 | head -10'
alias pscpu='echo get top process eating cpu; echo ps auxf | sort -nr -k 3; ps auxf | sort -nr -k 3'
alias pscpu10='echo get top process eating cpu; echo ps auxf | sort -nr -k 3 | head -10; ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='echo Get server cpu info; less /proc/cpuinfo'
alias cpu='cpuinfo'
alias gpumeminfo='echo get GPU ram on desktop; grep -i --color memory /var/log/Xorg.0.log'
alias osinfo='uname -a'
mygrepprocess () { ps -aux | grep $1
}
alias grepprocess=mygrepprocess
alias grepproc=mygrepprocess
#alias javaproc='ps -f | grep mehtavia | grep java'
alias javaproc='echo javaproc: jps -l; jps -l'
alias javaprocess='javaproc'
alias javaprocesslong='echo javaprocesslong: ps -aux | grep java; ps -aux | grep java'
alias mc='/sbclocal/data/software/bin/mc'
myprocess() { ps - aux | grep $1
}
alias p=myprocess
alias htop='/sbclocal/data/software/bin/htop'
myfindprocess() { lsof -i tcp:$1
}
alias findprocess='echo lsof -i tcp:PORT; myfindprocess'
mykill() { kill -9 $1
}
alias k=mykill
alias jdk='echo version; javac -version; echo javac; which javac'

#-------------------------------------------------------------
# SIZE
#-------------------------------------------------------------

mysize() { du -h --max-depth=1 $1
}
alias sizedir=mysize
alias size='du -h --max-depth=1'
alias sizeother='du -sh'
alias sizesbc='du -sh /sbclocal'
alias sizehome='du -sh /home/mehtavia'
#alias sizedetail=du -h --max-depth=1 \!:1 | sort -n | less
alias sizesbcdetail='du -h --max-depth=1 /sbc| sort -n | less'
alias sizehomedetail='du -h --max-depth=1 /home/mehtavia | sort -n | less'
#alias du=-h --max-depth=1 | sort -n | less

#-------------------------------------------------------------
# SPACE
#-------------------------------------------------------------

myspacefolder() { df -h $1
}
alias spacedir=myspacefolder
alias space='df -h'
alias spacesbc='df -h /sbclocal'
alias spacetmp='df -h /tmp'
alias spacehome='df -h /home/mehtavia'
alias sizeofcurrentdirectory='du -sh'

#-------------------------------------------------------------
# FIND
#-------------------------------------------------------------

alias findhelp='
echo example - find . -iname "*.clj" -exec grep "Report Stats" {} \; -print; echo findfile - $1 - filename; echo findjava - .java, $1 - searchstring; echo findtxt - .txt, $1 - searchstring; echo findclj - .clj, $1 - searchstring; echo findprop - .prop*, $1 - searchstring; echo findinfile - $1 - filetype, $2 - searchstring; echo findinanyfile - *, $1 - searchstring; echo findwithinfile $1 - filetype, $2 - searchstring'
#http://unixprod.swissbank.com/twiki/bin/view/Main/PremiumServiceCookBook#File_System_Housekeeping
alias findbig="echo find 5 biggest files; find . -type f -exec ls -s {} \; | sort -n -r | head -5"
alias findlargedirectories='du -sk * | sort -n'
alias find10mb='find . -size +10000000c -ls'
alias find100mb='find . -size +100000000c -ls'
alias findm30days='find . -type f -mtime 30 -ls' #Find files last modified over 30days ago...
alias finda30days='find . -type f -atime 30 -ls' #Find files last accessed over 30days ago...
alias findtar='find . -type f -name "*.tar" -ls'
alias findfilename='find . -iname "hermes-position-payload.json" -exec echo {} \;'
#alias findinsidefile='bash; find . -iname STRING*'
alias grepisin='grep CH0149757327 *.xml'
alias grepclofield='grep -r -i collateralSecured *.clj klonjure-gr/' #-r recursive, -i ignore case
alias localtebundle='locate -r commit-bundle'
myfindfile() { echo '';find . -iname "*$1*" -exec echo {} \;
}
alias findfile=myfindfile
findfunc() { echo 'find . -iname "$1" -exec grep "$2" {} \; -print'; find . -iname "$1" -exec grep "$2" {} \; -print
}
myfindjava() { echo 'find . -iname "*.java" -exec grep "$1" {} \; -print'; find . -iname "*.java" -exec grep "$1" {} \; -print
}
alias findjava=myfindjava
myfindtxt() {  echo 'find . -iname "*.txt" -exec grep "$1" {} \; -print'; find . -iname "*.txt" -exec grep "$1" {} \; -print
}
alias findtxt=myfindtxt
myfindclj() {  echo 'find . -iname "*.clj" -exec grep "$1" {} \; -print'; find . -iname "*.clj" -exec grep "$1" {} \; -print
}
alias findclj=myfindclj
myfindprop() {  echo 'find . -iname "*.prop*" -exec grep "$1" {} \; -print'; find . -iname "*.prop*" -exec grep "$1" {} \; -print
}
alias findprop=myfindprop
myfindinfile() { echo 'find . -iname "*.$1" -exec grep "$2" {} \; -print';find . -iname "*.$1" -exec grep "$2" {} \; -print
}
alias findinfile=myfindinfile
alias findtext=myfindinfile
alias grepinfile=myfindinfile
myfindinanyfile() {  find . -iname "*" -exec grep "$1" {} \; -print
}
alias findinanyfile=myfindinanyfile
alias grepinanyfile=myfindinanyfile
alias findwithinfile=findfunc

#-------------------------------------------------------------
# SECURE COPY
#-------------------------------------------------------------

mycopy() { echo 'scp -r FROM TO'; scp -r $1 $2
}
alias copy=mycopy
alias copy1='scp -r FROM TO'
#scp -r mehtavia mehtavia@xldn2967dap:/sbclocal/data/mehtavia
#scp -r mehtavia mehtavia@xldn0592dwk:/sbclocal/data/

#-------------------------------------------------------------
# INCLUDES
#-------------------------------------------------------------

#. ~/scripts/alias/.gitaliases

#-------------------------------------------------------------
# COLOR LS
#-------------------------------------------------------------
#http://www.geekgumbo.com/2011/11/04/changing-the-directory-color-in-the-bash-shell/
#http://stackoverflow.com/questions/1550288/mac-os-x-terminal-colors
#https://github.com/mbadolato/iTerm2-Color-Schemes
#CLICOLOR=1 simply enables coloring of your terminal.
#LSCOLORS=... specifies how to color specific items.
#change directory colour
export CLICOLOR=1
#LS_COLORS='di=1;35' ; export LS_COLORS;
#in csh
#setenv CLICOLOR 1
#setenv LSCOLORS dxfxcxdxbxegedabagacad
#LS_COLORS='di=01;33' ; export LS_COLORS 
#export LSCOLORS=GxFxCxDxBxegedabagaced

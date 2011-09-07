
# bashrc for zoo users
# we want to make bash sort of like the tcsh they have grown to expect


PATH="/usr/sbin:/sbin:/bin:/usr/bin:/etc:/usr/ucb:/usr/local/bin:/usr/local/local_dfs/bin:/usr/bin/X11:/usr/local/sas:."
MANPATH="/usr/share/man:/usr/local/man:/usr/local/local_dfs/man"
PAGER=less
EDITOR=vim
HISTFILESIZE=50
ORGANIZATION="University of Vermont"

export PATH MANPATH PAGER EDITOR HISTFILESIZE ORGANIZATION

# Uncomment the following lines if you are an ARC/INFO user
#alias arc=/usr/local/bin/arc
#alias arcdoc=/usr/local/bin/arcdoc
#alias info=/usr/local/bin/arcinfo

unset MAILCHECK  # We don't have spoolfiles stored locally any longer

tty -s && mesg n



case $TERM in
    xterm*)
    PS1='\[\e]0;\u@zoo: \w\a\]\u@zoo \w> ';;
    screen)
    PS1='\[\e_\u@zoo: \w\e\\\]\u@zoo \w> ';;
    *)
    PS1='\u@zoo \w> ';;
esac 

export PS1


# aliases from 'ol EMBA tcs
alias bye=logout
alias h=history
alias jobs='jobs -l'
alias lf='ls -algF'
alias log=logout
alias cls=clear
alias edit=$EDITOR
alias restore=/usr/local/local_dfs/bin/restore

#From EEBS
#Safety
alias rm='rm -i'
alias cp='cp -i'
alias ln='ln -i'

#Convenience redefinitions
alias lsl='ls -l'
alias lsla='ls -la'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ccd='cd ~/ && clear'
alias cdd='cd /home/eebs/Desktop/'
alias ccdd='cd /home/eebs/Desktop/ && clear'
alias p='pwd'
alias h=history
alias c=clear
alias reloada='source ~/.bash_aliases'
alias 'icommandyoutodie'='exit'
alias log='sudo nano /var/log/vsftpd.log'
alias ud='sudo perl /home/eebs/parsevsftpd.pl'
alias usage='df -h |grep /mnt/media |cut -c 41-43'
alias restart='sh /home/eebs/restartserver.sh'
alias apt='sudo apt-get install'

#Git
alias gis='git status'
alias gc='git commit'
alias gb='git branch'
alias ga='git add'
alias gaa='git add --all'
alias gh='git push'
alias gl='git pull'
alias gg='git log --stat="120,120" --color'
alias gw='git-wtf'
alias gp='git log --graph --oneline --all'
alias tree='tree --charset ISO8859-1'
alias gi='git checkout import'
alias gm='git checkout master'


shopt -s cdspell histappend 

set -o noclobber




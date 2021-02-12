
#command line prompt flavors
PS1='[\[\033[01;32m\]\u\[\033[00m\]@\h \w]\$ '

#Ignore dupes in command line history
HISTCONTROL=ignoreboth

#Git
alias "gp"='git remote prune origin'
alias "glog"='git log --oneline --graph --all'
alias gfs="git rev-list --objects --all \
    | git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' \
    | sed -n 's/^blob //p' \
    | sort --numeric-sort --key=2 \
    | cut -c 1-12,41- \
    | $(command -v gnumfmt || echo numfmt) --field=2 --to=iec-i --suffix=B --padding=7 --round=nearest"

#Misc
alias split_every="awk 'BEGIN{nLineMax=10;nline=0;nFile=0}/^$/{if(nline>=nLineMax){nFile++;nline=0;next}}{nline++;print $0 > nFile}"

#Snappy decompress
alias sx="snzip -d"

#Docker
alias drc="docker rm -f $(docker ps -a -q)"
alias dri="docker rmi -f $(docker images -q)"

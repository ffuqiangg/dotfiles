#
# ~/.bashrc
#

PS1='\[\e[1;34m\]#\[\e[0m\] \[\e[1;36m\]\u\[\e[0m\] @ \[\e[1;32m\]\h\[\e[0m\] in \[\e[1;33m\]\w\[\e[0m\] [\A]\n\[\e[1;31m\]\$\[\e[0m\] '

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# alias chmod commands
alias mx='chmod a+x'
alias 000='chmod -R 000'
alias 644='chmod -R 644'
alias 666='chmod -R 666'
alias 755='chmod -R 755'
alias 777='chmod -R 777'

# Alias's for archives
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'

# Copy and go to the directory
cpg ()
{
    if [ -d "$2" ];then
        cp $1 $2 && cd $2
    else
        cp $1 $2
    fi
}

# Move and go to the directory
mvg ()
{
    if [ -d "$2" ];then
        mv $1 $2 && cd $2
    else
        mv $1 $2
    fi
}

# Create and go to the directory
mkdirg ()
{
    mkdir -p $1
    cd $1
}

# Goes up a specified number of directories  (i.e. up 4)
up ()
{
    local d=""
    limit=$1
    for ((i=1 ; i <= limit ; i++))
        do
            d=$d/..
        done
    d=$(echo $d | sed 's,^/,,')
    if [ -z "$d" ]; then
        d=..
    fi
    cd $d
}

# Histoty search ↑ ↓
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

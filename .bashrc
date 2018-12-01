# .bashrc

if [ -f /etc/bashrc ]; then
        . /etc/bashrc   # --> Read /etc/bashrc, if present.
fi

source ~/.git-completion.sh

GIT_PS1_SHOWDIRTYSTATE=1
#GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUPSTREAM="verbose"

PS1_USER='\n\[\e[1;32m\]\u\[\e[34m\]@\[\e[32m\]\h $(__git_ps1 "\e[0;35m<git> \e[1;37m%s")\n\[\e[1;34m\]\d \@ \[\e[0;34m\](\#) \[\e[1;33m\]\w\n\[\e[1;36m\][pv-labs]->\[\e[0m\] '
PS1_ROOT='\[\e]0;\w\a\]\n\[\e[1;31m\]\u\[\e[34m\]@\[\e[32m\]\h \[\e[33m\]\w\n\[\e[1;36m\][pv-labs\[\e[1;36m\]]-> \[\e[0m\]'

PS1=$PS1_USER

alias grep='grep -n -B 5 -A 5 --colour'
alias grepSimple='grep -n --colour'
alias tags='ctags *.c *.cpp *.h *.s *.S'
alias rm='rm -i'
alias mv='mv -i'
alias bc='bc -l'
alias lss='ls *.[ch]'
alias lspdf='ls *.pdf'
alias ll='ls -lh'
alias ok='okular'

export INTELFPGAOCLSDKROOT="/home/tools/intelFPGA/18.0/hld"

export QSYS_ROOTDIR="/home/tools/intelFPGA/18.0/quartus/sopc_builder/bin"

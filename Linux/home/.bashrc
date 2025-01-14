#
# ~/.bashrc
#

[[ $- != *i* ]] && return

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Change the window title of X terminals
case ${TERM} in
  xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
    ;;
  screen*)
    PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
    ;;
esac

# Own, simple: ~ >
#export PS1="\[\e[32m\]\w\[\e[94m\] >\[\e[0m\] "

# Geohot, old: me$here:~$
#export PS1="\[\033[38;5;51m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h:\[$(tput sgr0)\]\[\033[38;5;226m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\\$\[$(tput sgr0)\] "

# Geohot, ubuntu: here :: ~ 0 »
#export PS1=$'\h \[\e[1;31m\]:: \[\e[32m\]\w \[\e[31m\]$(echo -n $?) \[\e[34m\]» \[\e[0m\]'

# bisqwit@chii: me@here:~$
#export PS1=$'\[\e[0m\]\[\e[38;5;100m\]\u\[\e[38;5;101m\]@\[\e[38;5;106m\]\h\[\e[38;5;64m\]:\[\e[38;5;70m\]\w\[\e[38;5;71m\]\$\[\e[0m\] '

# Ubuntu: me@here:~$
#export PS1=$'\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#export PS1=$'\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[00m\]\$ '
export PS1=$'\u@\h:\[\033[36m\]\w\[\033[m\]\$ '

# Same as above but pink
#export PS1=$'\[\e[0m\]\[\e[38;5;134m\]\u\[\e[38;5;135m\]@\[\e[38;5;170m\]\h\[\e[38;5;206m\]:\[\e[38;5;212m\]\w\[\e[38;5;213m\]\$\[\e[0m\] '
# vvv
#export PS1=$'\[\e[0m\]\[\e[38;5;169m\]\u\[\e[38;5;133m\]@\[\e[38;5;175m\]\h\[\e[38;5;206m\]:\[\e[38;5;212m\]\w\[\e[38;5;177m\]\$\[\e[0m\] '

# 'path% ' in all yellow
#export PS1=$'\[\e[1;33m\]\w%\[\e[m\] '

# Bisqwit (from 'C++ for C programmers -- lesson 1' video)
#export PS1="\[\e[36m\]\u@\h:\[\e[34m\]\w$ \[\e[0m\]"

#PROMPT_COMMAND=__prompt_command
#__prompt_command() {
#  local EXIT="$?"
#  PS1="\u\[\e[38;5;225m\]@\[\e[0m\]\h \[\e[1;31m\]:: \[\e[32m\]\w "
#  if [ $EXIT != 0 ]; then
#    PS1+="\[\e[31m\]$EXIT "
#  fi
#  PS1+="\[\e[34m\]» \[\e[0m\]"
#}

complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize
shopt -s expand_aliases
# Enable history appending instead of overwriting.  #139609
shopt -s histappend

HISTSIZE=20000
HISTFILESIZE=20000

# Don't put duplicate lines into the history
HISTCONTROL=ignoredups:ignorespace

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

echo 'Microsoft Windows [Version 10.0.19042.804]'
echo '(c) 2020 Microsoft Corporation. All rights reserved.'


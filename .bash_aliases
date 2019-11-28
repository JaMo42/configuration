# Aliases
alias e="vim"
alias l="ls"
alias lst="ls"
alias la="ls -lA"
alias ll="ls -l"
alias cp="cp -rv"
alias mv="mv -v"
alias mkdir="mkdir -p"
alias h="builtin cd $HOME"
alias cd..="cd .."
alias py="python"
alias xrdbm="xrdb -merge -I$HOME/.Xresources.d/ $HOME/.Xresources"
alias dtree="tree -d"
alias ccat="pygmentize -g"

# Functions

cd () { builtin cd $1 && ls; }
mkcd () { mkdir $1 && cd $1; }


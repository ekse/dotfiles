alias ls='ls --color -hp'
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias s='sudo'

# Prompt
export PS1="\[\033[1;35m\][\u@\h] : \w\[\033[1;37m\] (13:51)\[\033[1;36m\]$(git branch 2>/dev/null|cut -f2 -d\* -s)\e[0m \n$ "

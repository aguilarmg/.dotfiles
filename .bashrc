# git
# https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh
source ~/bin/.git-prompt.sh
# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/bin/.git-completion.bash


# Config git prompt
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1

TERM=xterm-256color

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias defintions
if [ -f ~/.systemconfig/.bash_aliases ]; then
  . ~/.bash_aliases
else
  echo "Not found."
fi

ATTRIBUTE_BOLD='\[\e[1m\]'
ATTRIBUTE_RESET='\[\e[0m\]'
COLOR_DEFAULT='\[\e[39m\]'
COLOR_RED='\[\e[31m\]'
COLOR_GREEN='\[\e[32m\]'
COLOR_YELLOW='\[\e[33m\]'
COLOR_BLUE='\[\e[34m\]'
COLOR_MAGENTA='\[\e[35m\]'
COLOR_CYAN='\[\e[36m\]'

# Function to shorten the path that gets printed to the bash prompt.
_dir_chomp () {
    local IFS=/ c=1 n d
    local p=(${1/#$HOME/\~}) r=${p[*]}
    local s=${#r}
    while ((s>$2&&c<${#p[*]}-1))
    do
        d=${p[c]}
        n=1;[[ $d = .* ]]&&n=2
        ((s-=${#d}-n))
        p[c++]=${d:0:n}
    done
    echo "${p[*]}"
}

# export PS1="${COLOR_CYAN}\\u${COLOR_DEFAULT}${COLOR_GREEN}:${COLOR_DEFAULT}${COLOR_YELLOW} \W${COLOR_DEFAULT}${COLOR_RED}$(__git_ps1 " (%s)")${COLOR_DEFAULT} ${COLOR_CYAN}> ${COLOR_DEFAULT}"
# bash prompt that only lists current dir.
# export PS1='\[\e[36m\]\u\[\e[39m\]\[\e[32m\]: \[\e[39m\]\[\e[33m\]\W\[\e[39m\]\[\e[31m\]$(__git_ps1 "(%s)")\[\e[0m\] \[\e[36m\]> \[\e[39m\]'
# bash prompt that includes relative path to home dir.
# export PS1='\[\e[36m\]\u\[\e[39m\]\[\e[32m\]: \[\e[39m\]\[\e[33m\]\w\[\e[39m\]\[\e[31m\]$(__git_ps1 "(%s)")\[\e[0m\] \[\e[36m\]> \[\e[39m\]'
# bash prompt that includes path shortener.
export PS1='\[\e[36m\]\u\[\e[39m\]\[\e[32m\]: \[\e[39m\]\[\e[33m\]$(_dir_chomp "$(pwd)" 5)\[\e[39m\]\[\e[31m\]$(__git_ps1 "(%s)")\[\e[0m\] \[\e[36m\]> \[\e[39m\]'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/otareg/.local/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/otareg/.local/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/otareg/.local/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/otareg/.local/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


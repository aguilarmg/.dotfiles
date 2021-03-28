alias ls='ls --color'
alias ll='ls -lua'
alias la='ls -A'

alias grep='grep --color'
alias fgrep='fgrep --color'
alias egrep='egrep --color'

# Aliases to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

alias python='python3'

# Make a directory and cd into it
mkcd() {
  mkdir "${1}" && cd "${1}"
}

# Go up [n] directories
up() {
  local cdir="$(pwd)"
  if [[ "${1}" == "" ]]; then
    cdir="$(dirname "${cdir}")"
  elif ! [[ "${1}" =~ ^[0-9]+$ ]]; then
    echo "Error: argument must be a number"
  elif ! [[ "${1}" -gt "0" ]]; then
    echo "Error: argument must be positive."
  else
    for ((i=0; i<${1}; i++)); do
      local _cdir="$(dirname "${cdir}")"
      if [[ "${cdir}" == "${_cdir}" ]]; then
        break
      else
        cdir="${_cdir}"
      fi
    done
  fi
  cd "${cdir}"
}

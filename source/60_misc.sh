to() {
  cd ~/projects/$1
}

_to_completion() {
  COMPREPLY=($(compgen -W "$(ls ~/projects/)" ${COMP_WORDS[COMP_CWORD]}))
}

complete -F _to_completion to

#!/bin/bash

ROOT_PROJECT_DIR=$HOME/projects/

proot() {
  echo $(echo $PWD | sed "s|\($ROOT_PROJECT_DIR[A-Za-z]*\).*|\1|")
}

to() {
  cd $ROOT_PROJECT_DIR$1
}

_to_completion() {
  COMPREPLY=($(compgen -W "$(ls $ROOT_PROJECT_DIR)" ${COMP_WORDS[COMP_CWORD]}))
}

complete -F _to_completion to

beer() {
  spec=$1
  shift
  cd $(proot); bundle exec rspec "./spec/$spec" "$@"
}

_beer_completion() {
  COMPREPLY=($(compgen -W "$(cd $(proot); find ./spec -type f | sed 's|./spec/||')" ${COMP_WORDS[COMP_CWORD]}))
}

complete -F _beer_completion beer

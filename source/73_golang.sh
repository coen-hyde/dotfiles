export GOPATH=$HOME/golang
export GO_PROJECTS_DIR="${GOPATH}/src/github.com/coen-hyde"
export GO15VENDOREXPERIMENT=1
PATH=$(path_remove ~/golang/bin):~/golang/bin


gop() {
  cd $GO_PROJECTS_DIR/$1
}

_gop_completion() {
  COMPREPLY=($(compgen -W "$(ls $GO_PROJECTS_DIR)" ${COMP_WORDS[COMP_CWORD]}))
}

complete -F _gop_completion gop

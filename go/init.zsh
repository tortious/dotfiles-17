# Defines ruby aliases, functions, and variable exports for a clean ruby env

CUR="$(dirname $0)"
source "$CUR/functions.zsh"
source "$CUR/aliases.zsh"

export GOPATH=$HOME/Golang
export PATH=${PATH}:/usr/local/go/bin:$HOME/Golang/bin

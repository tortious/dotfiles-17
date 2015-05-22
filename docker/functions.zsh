function dclc() {
  docker ps -a | awk 'NR > 1 {print $1}' | xargs docker rm
}

function dlft() {
  docker logs -f --tail=$1 $2
}

# function dclin() {
#   eval "docker rmi $(docker images -a | awk '/$1/ {print $3}')"
# }
#
# alias dclin!='docker rmi $(docker images -a | awk '/none/ {print $3}')'

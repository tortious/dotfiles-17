function dclc() {
  docker ps -a | awk 'NR > 1 {print $1}' | xargs docker rm
}

function dlft() {
  docker logs -f --tail=$1 $2
}

function b2ddns!() {
  DOCKER_BRIDGE=`boot2docker ssh ifconfig docker0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
  boot2docker ssh sudo "ash -c \"echo EXTRA_ARGS=\'--dns $DOCKER_BRIDGE --dns $(scutil --dns | awk -F ': ' '/nameserver/{print $2}' | head -1) --dns-search service.consul\' > /var/lib/boot2docker/profile\""
  boot2docker restart
}

# function dclin() {
#   eval "docker rmi $(docker images -a | awk '/$1/ {print $3}')"
# }
#
# alias dclin!='docker rmi $(docker images -a | awk '/none/ {print $3}')'

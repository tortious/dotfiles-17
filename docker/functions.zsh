function dccl() {
  echo "Removing exited containers ..."
  docker rm -v $(docker ps -a -q -f status=exited)
  echo "... and dangling"
  docker rmi $(docker images -f "dangling=true" -q)
  echo "... wrapping up with the docker-cleanup-volumes image"
  docker run -v /var/run/docker.sock:/var/run/docker.sock -v /var/lib/docker:/var/lib/docker --rm martin/docker-cleanup-volumes
  echo "... all done."
}
function dclc() {
  docker ps -a | awk 'NR > 1 {print $1}' | xargs docker rm
}

function dlft() {
  docker logs -f --tail=$1 $2
}

function b2ddns!() {
  DOCKER_BRIDGE=`boot2docker ssh ifconfig docker0 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}'`
  echo "Setting docker dns to the docker bridge @ $DOCKER_BRIDGE"
  boot2docker ssh sudo "ash -c \"echo EXTRA_ARGS=\'--dns $DOCKER_BRIDGE --dns $(scutil --dns | awk -F ': ' '/nameserver/{print $2}' | head -1) --dns-search service.consul\' > /var/lib/boot2docker/profile\""
  boot2docker restart
  echo "... b2d restarted."
}

function dcr() {
  docker-compose kill $1 && docker-compose build $1 && docker-compose up -d $1
}

function dcnix() {
  docker-compose kill $1 && docker-compose rm -f $1
}

# function dclin() {
#   eval "docker rmi $(docker images -a | awk '/$1/ {print $3}')"
# }
#
# alias dclin!='docker rmi $(docker images -a | awk '/none/ {print $3}')'

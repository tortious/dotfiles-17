# Docker
alias dps='docker ps'
alias drm='docker rm'
alias drm!='docker rm -f'
alias drmi='docker rmi'
alias drmi!='docker rmi -f'
alias ds!='docker stop'
alias ds='docker start'

# Docker Compose
alias dc='docker-compose'
alias dcb='docker-compose build'
alias dck='docker-compose kill'
alias dcp='docker-compose pull'
alias dcu='docker-compose up'
alias edc="$EDITOR docker-compose.yml"

# Docker Machine
alias dm='docker-machine'
alias dmd='docker-machine stop'
alias dmk='docker-machine kill'
alias dmls='docker-machine ls'
alias dmr='docker-machine restart'
alias dmrm='docker-machine rm'
alias dms='docker-machine ssh'
alias dmu='docker-machine start'

# Boot2docker
alias bd='boot2docker'
alias bds='boot2docker ssh'
alias bdr='boot2docker restart'
alias bdd='boot2docker down'
alias bdu='boot2docker up'

# Docker Cleanup
alias drmq='docker rm -v $(docker ps -a -q -f status=exited)'
alias drmiq='docker rmi $(docker images -f "dangling=true" -q)'
alias dvc!='docker-volumes rm `docker-volumes list | grep docker | cut -d"|" -f1`'

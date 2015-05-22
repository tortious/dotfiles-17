# Docker
alias dps='docker ps'
alias drm='docker rm'
alias drm!='docker rm -f'
alias ds!='docker stop'
alias ds='docker start'

# Docker Compose
alias dc='docker-compose'
alias dcb='docker-compose build'
alias dcp='docker-compose pull --allow-insecure-ssl'
alias dcu='docker-compose up'

# Boot2docker
alias bd='boot2docker'
alias bds='boot2docker ssh'
alias bdr='boot2docker restart'
alias bdd='boot2docker down'
alias bdu='boot2docker up'

# Docker Cleanup
alias drmq='docker rm `docker ps -a -q`'
alias drmiq='docker rmi `docker images -a -q`'
alias dvc!='docker-volumes rm `docker-volumes list | grep docker | cut -d"|" -f1`'

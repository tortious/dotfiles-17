# Docker
alias dps='docker ps'
alias ds!='docker stop'
alias ds='docker start'
alias dclc="docker ps -a | awk 'NR > 1 {print $1}' | xargs docker rm"
alias dclin="docker rmi $(docker images -a | awk '/none/ {print $3}')"
alias dclin!="docker rmi -f $(docker images -a | awk '/none/ {print $3}')"

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


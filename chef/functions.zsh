# knife
function kesd() { knife ec2 server delete $1 --purge }
function kesdc() { 
  knife ssh "name:$1" "sudo docker exec -ti consul consul leave && sudo docker stop consul" -x 'ec2-user'

  knife ec2 server delete -N $1 --purge -y
}
function kesdn() { knife ec2 server delete --node-name $1 --purge }
function kssh() { knife ssh "name:$1" "$*" -x 'ec2-user' }
function kvcd() { 
  knife vault create $1 $2 -A bkonowitz,cschwoegler,mcowgill,sschwoegler -S "role:${1}_${2}_vault"
}
function kvsa() { knife vault show $1 $2 -p all }

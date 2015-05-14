# knife
function kesd() { knife ec2 server delete $1 --purge }
function kesdn() { knife ec2 server delete --node-name $1 --purge }
function kvcd() { 
  knife vault create $1 $2 -A bkonowitz,cschwoegler,mcowgill,sschwoegler -S "role:${1}_${2}_vault"
}
function kvsa() { knife vault show $1 $2 -p all }

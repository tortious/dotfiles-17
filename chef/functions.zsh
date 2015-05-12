# knife
function kesd() { knife ec2 server delete $1 --purge }
function kesdn() { knife ec2 server delete --node-name $1 --purge }

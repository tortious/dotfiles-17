# Go
function gof() {
  go fmt ${1:=.}
}

function gocd () { 
  cd `go list -f '{{.Dir}}' $1` 
}

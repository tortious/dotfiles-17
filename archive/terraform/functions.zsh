# terraform

function mktfm() {
  name=$1

  mkdir $name
  pushd $name
  touch variables.tf
  touch main.tf
  touch outputs.tf
  popd
}

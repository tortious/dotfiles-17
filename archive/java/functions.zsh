function fetch-mvn-deps() {
  mvn dependency:unpack-dependencies -Dclassifier=sources -Dmdep.failOnMissingClassifierArtifact=false
  retag
}


function mts() {
  mvn -Dsuites="$*" test
}

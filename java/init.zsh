# Defines config for the JVM and its cohorts

CUR="$(dirname $0)"
source "$CUR/functions.zsh"
source "$CUR/aliases.zsh"

# go big or go home
export JAVA_OPTS="-Xms1048M -Xmx2048M -XX:MaxPermSize=1024M"
export MAVEN_OPTS=${JAVA_OPTS}
export SBT_OPTS=${JAVA_OPTS}

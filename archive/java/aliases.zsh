# Java
alias pj='ps aux | grep java'
alias pkj='pkill java'

# Maven
alias mc='mvn compile'
alias mcc='mvn clean compile'
alias mci='mvn clean install'
alias mi='mvn install'
alias mp='mvn package'
alias mpnt='mvn package -DskipUnitTests=true -DskipItTests=true -Dmaven.test.skip=true'
alias mcp='mvn clean package'
alias mcpnt='mvn clean package -DskipUnitTests=true -DskipItTests=true -Dmaven.test.skip=true'
alias mcint='mvn clean install -DskipUnitTests=true -DskipItTests=true -Dmaven.test.skip=true'
alias mt='mvn test'
alias mtt='mt | tee test_output.log'
alias mvt='mvn verify | tee test_output.log'

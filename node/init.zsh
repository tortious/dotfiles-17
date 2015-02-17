# Node config for fun and profit

# ionic
alias iri='ionic run ios -l -c -s'
alias iei='ionic run ios -l -c -s'

# Node
alias ni='npm install'
alias nis='npm install --save'
alias nisd='npm install --save-dev'

if which brew > /dev/null; then
  source $(brew --prefix nvm)/nvm.sh
elif [ -d ~/.nvm ]; then
  source ~/.nvm/nvm.sh
fi

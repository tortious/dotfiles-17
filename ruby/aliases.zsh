# Bundler
alias b="bundle"
alias bake='bundle exec rake'
alias be='bundle exec'
alias bi='bundle install'
alias bu='bundle update'
alias rebi='bundle install && !!'

# General
alias fs='foreman start'
alias irb='irb --readline -r irb/completion'
alias killruby='killall -9 ruby'
alias rubytags='ctags -R --languages=ruby --exclude=.git --exclude=log --exclude=tmp --exclude=target . $(bundle list --paths)'

# Rubygems
alias gemi="gem install"
alias gemiv="gem install -v"

# Rails
alias m="migrate"
alias rmigrate="rake db:migrate db:rollback && rake db:migrate db:test:prepare"
alias rc='bundle exec rails console'
alias remigrate='bundle exec rake db:migrate && rake db:migrate:redo && rake db:schema:dump && rake db:test:prepare'
alias rk="bundle exec rake"
alias rs='bundle install && rails server -p 3000'

# Tests and Specs
alias ber="bundle exec rspec"
alias cuc="bundle exec cucumber"
alias t="bundle exec rspec"

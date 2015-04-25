# Defines ruby aliases, functions, and variable exports for a clean ruby env

CUR="$(dirname $0)"
source "$CUR/functions.zsh"
source "$CUR/aliases.zsh"

export JRUBY_OPTS="-J-XX:+TieredCompilation -J-XX:TieredStopAtLevel=1"
export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# if which rbenv > /dev/null; then eval "$(rbenv init - zsh --no-rehash)"; fi

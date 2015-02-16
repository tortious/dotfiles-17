# Make directory and change into it.
function mcd() {
  mkdir -p "$1" && cd "$1";
}
function cdf() { cd *$1*/ }

# Change file extensions recursively in current directory
# change-extension erb haml
function change-extension() {
  foreach f (**/*.$1)
  mv $f $f:r.$2
  end
}

# Shell functions
function tophist() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head -n 15
}
function used-ports() {
  lsof -i | grep LISTEN
}

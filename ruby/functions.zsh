# Ruby
function rweb() {
  ruby -run -e httpd $1 -p${$2:=5000}
}

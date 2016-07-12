# Ruby
function rweb() {
  dir=$1
  port=$2
  ruby -run -e httpd $dir -p${port:=5000}
}

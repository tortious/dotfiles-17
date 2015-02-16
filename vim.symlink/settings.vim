let vimsettings = "~/.vim/plugins/settings"

for fpath in split(globpath(vimsettings, '*.vim'), '\n')
  exe 'source' fpath
endfor

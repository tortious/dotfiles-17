" nvim init
"
" This file contains the minimal settings to set the foundation, with the
" majority of the configuration and settings living in files spread between
" vim/rcfiles and vim/rcplugins
set nocompatible

let g:python_host_prog = '/Users/bkonowitz/.asdf/installs/python/2.7.15/bin/python'
let g:python3_host_prog = '/Users/bkonowitz/.asdf/installs/python/3.7.1/bin/python'
let g:ruby_host_prog = '/Users/bkonowitz/.asdf/installs/ruby/2.5.3/bin/ruby'

" Need to set the leader before defining any leader mappings
" let mapleader = "\<Space>"
let mapleader=","

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.config/nvim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !mkdir -p ~/.config/nvim/autoload
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  " autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/bundle')
call s:SourceConfigFilesIn('rcplugins')
call plug#end()

call s:SourceConfigFilesIn('rcfiles')

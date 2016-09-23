let g:shfmt_switches = ['-i 2']
augroup shell_files
  autocmd!
  autocmd BufWritePost *.sh,*.zsh :Shfmt -i 2
augroup END

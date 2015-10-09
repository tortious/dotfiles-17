augroup test_by_filetype
  autocmd!

  autocmd FileType ruby nnoremap tn :call RunNearestSpec()<CR>
  autocmd FileType ruby nnoremap tf :call RunCurrentSpecFile()<CR>

  autocmd FileType ruby nnoremap <Leader>A :call RunAllSpecs()<CR>
  autocmd FileType ruby nnoremap <Leader>y :call RunNearestSpec()<CR>
  autocmd FileType ruby nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
  autocmd FileType ruby nnoremap <Leader>l :call RunLastSpec()<CR>
augroup END

let g:rspec_command = "Dispatch rspec {spec}"

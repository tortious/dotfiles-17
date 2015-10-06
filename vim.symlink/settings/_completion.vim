" =============== Completion ===============
set smarttab
set wildignore+=*/tmp/*,*/target/*,*/node_modules/*,*.so,*.swp,*.zip,*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
set wildmode=list:longest,list:full
set complete=.,w,t,b,u,]
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
map <Leader>ct :!ctags -Ra<CR>

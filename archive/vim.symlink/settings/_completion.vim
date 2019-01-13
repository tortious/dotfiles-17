" =============== Completion ===============
set smarttab
set wildignore+=*/tmp/*,*/target/*,*/node_modules/*,*.so,*.swp,*.zip,*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*
" set wildmode=list:longest,list:full
set complete=.,w,t,b,u,]

if exists(":Dispatch")
  nnoremap <Leader>ct :Dispatch! ctags -Ra<CR>
else
  nnoremap <Leader>ct :!ctags -Ra<CR>
endif

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType elixir setlocal omnifunc=elixircomplete#Complete

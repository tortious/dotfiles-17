augroup test_by_filetype
  autocmd!
  autocmd FileType elixir map <Leader>t :!mix test<CR>
augroup END

autocmd Syntax elixir setlocal foldmethod=syntax

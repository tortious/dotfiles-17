" " Run NeoMake on read and write operations
" autocmd! BufReadPost,BufWritePost * Neomake

" " Disable inherited syntastic
" let g:syntastic_mode_map = {
"       \ "mode": "passive",
"       \ "active_filetypes": [],
"       \ "passive_filetypes": [] }

" let g:neomake_serialize = 1
" let g:neomake_serialize_abort_on_error = 1

" let g:neomake_ruby_enabled_makers = ['mri'] " consider jruby, rubocop, and reek
" call neomake#configure#automake('nw', 1000)


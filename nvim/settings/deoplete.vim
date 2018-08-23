" let g:deoplete#enable_at_startup = 1
" if !exists('g:deoplete#omni#input_patterns')
"   let g:deoplete#omni#input_patterns = {}
" endif

" if !exists('g:deoplete#omni#functions')
"   let g:deoplete#omni#functions = {}
" endif

" if !exists('g:deoplete#sources')
"   let g:deoplete#sources = {}
" endif

" let g:deoplete#sources['ruby'] = ['file', 'buffer', 'ruby']

" set completeopt=longest,menuone,preview

" " let g:deoplete#disable_auto_complete = 2
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" " deoplete tab-complete
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType elixir setlocal omnifunc=elixircomplete#Complete

" Disable deoplete when in multi cursor mode
" function! Multiple_cursors_before()
"     let b:deoplete_disable_auto_complete = 1
" endfunction

" function! Multiple_cursors_after()
"     let b:deoplete_disable_auto_complete = 0
" endfunction

" let g:deoplete#enable_smart_case = 1
" let g:deoplete#auto_complete_start_length = 1

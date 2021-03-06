map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

let g:go_addtags_transform = "snake_case"
let g:go_auto_sameids = 0
let g:go_auto_type_info = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_build_constraints = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_info_mode = 'gocode'
let g:go_list_type = "quickfix"
let g:go_snippet_engine = "neosnippet"
let g:go_term_enabled = 1

autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)

" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
	let l:file = expand('%')
	if l:file =~# '^\f\+_test\.go$'
		call go#cmd#Test(0, 1)
	elseif l:file =~# '^\f\+\.go$'
		call go#cmd#Build(0)
	endif
endfunction

au FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
au FileType go nmap gd <Plug>(go-def)
au FileType go nmap gdd :GoDeclsDir<cr>
au FileType go set nolist
au Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
au Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
au Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')
au Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')


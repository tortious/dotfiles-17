let g:xmpfilter_cmd = "seeing_is_believing"

autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing_is_believing-mark)

autocmd FileType ruby nmap <buffer> <F3> <Plug>(seeing_is_believing-clean)
autocmd FileType ruby xmap <buffer> <F3> <Plug>(seeing_is_believing-clean)
autocmd FileType ruby imap <buffer> <F3> <Plug>(seeing_is_believing-clean)

" xmpfilter compatible
autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby xmap <buffer> <F5> <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing_is_believing-run_-x)

" auto insert mark at appropriate spot.
autocmd FileType ruby nmap <buffer> <F6> <Plug>(seeing_is_believing-run)
autocmd FileType ruby xmap <buffer> <F6> <Plug>(seeing_is_believing-run)
autocmd FileType ruby imap <buffer> <F6> <Plug>(seeing_is_believing-run)

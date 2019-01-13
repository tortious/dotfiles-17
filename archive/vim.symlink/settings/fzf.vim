command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)
set grepprg=rg\ --vimgrep

nmap <Leader>fb :Buffers<CR>
nmap <C-p> :FZF<CR>
nmap <Leader>ff :Files<CR>
nmap <Leader>ft :Tags<CR>

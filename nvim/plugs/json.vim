let g:vim_json_syntax_conceal = 0
vnoremap <leader>js= :!python -m json.tool<CR>
au FileType json nnoremap <buffer> <leader>= :exec "%!python -m json.tool"<CR>

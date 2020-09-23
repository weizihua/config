au FileType yaml nnoremap <buffer> <leader>rr :exec '15Term kubectl apply -f ' . expand("%:p")<CR>
au FileType yaml nnoremap <buffer> <leader>rd :exec '15Term kubectl delete -f ' . expand("%:p")<CR>

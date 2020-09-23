let java_highlight_functions = 1
let java_highlight_all = 1

au FileType java setlocal omnifunc=javacomplete#Complete
au FileType java inoremap <buffer> <S-CR> <Esc>A;<CR>
au FileType java nnoremap <buffer> <S-CR> A;<CR>
au FileType java nnoremap <buffer> <localleader>o :OR<CR>
au FileType java nnoremap <buffer> <localleader>c :CocCommand java.workspace.compile<CR>
au FileType java nnoremap <buffer> <localleader>0 :CocCommand java.clean.workspace<CR>

" Execute current java file
au FileType java nnoremap <buffer> <leader>rr :exec '15Term java ' . expand("%:t")<CR>

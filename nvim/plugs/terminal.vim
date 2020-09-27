nnoremap <leader>tt :TTerm<space>
nnoremap <leader>tv :VTerm<space>
nnoremap <leader>ts :Term<space>

augroup TerminalStuff
   au!
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

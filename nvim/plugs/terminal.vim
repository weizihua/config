" Easy Escape from terminal
" tnoremap <silent><ESC> <C-\><C-n>

" Term maps
nnoremap <leader>tt :TTerm<space>
nnoremap <leader>tv :VTerm<space>
nnoremap <leader>ts :Term<space>

" Disable numbers in terminal
augroup TerminalStuff
   au!
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END

" Run, Debug and Terminal 
" nnoremap <silent><M-4> :call ToggleTerminal("⌨  RUN", 1)<CR>
" tnoremap <silent><M-4> <C-\><C-n>:call ToggleTerminal("⌨  RUN", 1)<CR>
"
" nnoremap <silent><M-5> :call ToggleTerminal("⌨  DEBUG", 1)<CR>
" tnoremap <silent><M-5> <C-\><C-n>:call ToggleTerminal("⌨  DEBUG", 1)<CR>
"
" nnoremap <silent><M-0> :call ToggleTerminal("⌨  TERMINAL", 1)<CR>i
" tnoremap <silent><M-0> <C-\><C-n>:call ToggleTerminal("⌨  TERMINAL", 1)<CR>



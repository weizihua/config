nnoremap <silent> ]b :bNext<CR>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <leader>bn :bNext<CR>
nnoremap <leader>bb :bNext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bq :bd!<CR>
nnoremap <leader>qa :bufdo bwipeout<CR>
nnoremap <leader>bo :BufOnly<CR>
nnoremap <leader><localleader> <C-^>
nnoremap <silent><leader>b0 :call CleanEmptyBuffers()<CR> :echo "Empty buffers cleanned"<CR>

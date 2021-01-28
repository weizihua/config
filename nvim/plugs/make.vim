nnoremap <silent><leader>m :call fzf#run({
            \ 'source': GetMakefileTargets(),
            \ 'sink': '15Term make',
            \ 'down': '30%',
            \ })<CR>

" Make
" nnoremap <leader>mra :TTerm make all<CR>
" nnoremap <leader>mrr :TTerm make run<CR>
" nnoremap <leader>mrd :TTerm make debug<CR>
" nnoremap <leader>mrb :15Term make build<CR>
" nnoremap <leader>mrt :15Term make test<CR>
" nnoremap <leader>mrc :15Term make clean<CR>

" Make Docker Build
nnoremap <leader>mdbs :15Term make docker-build-snapshot<CR>
nnoremap <leader>mdbl :15Term make docker-build-latest<CR>
nnoremap <leader>mdbr :15Term make docker-build-release<CR>

" Make Docker Push
nnoremap <leader>mdps :15Term make docker-push-snapshot<CR>
nnoremap <leader>mdpl :15Term make docker-push-latest<CR>
nnoremap <leader>mdpr :15Term make docker-push-release<CR>

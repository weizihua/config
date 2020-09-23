nnoremap <leader>fa :Rg<CR>
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>fF :GFiles<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader><leader> :Buffers<CR>
nnoremap <leader>ft :BTags<CR>
nnoremap <leader>fT :Tags<CR>
nnoremap <leader>fC :Commits<CR>
nnoremap <leader>fc :BCommits<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fs :Snippets<CR>
nnoremap <leader>fw :Windows<CR>

let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }

" nnoremap <silent><leader>mm :call fzf#run({
"             \ 'source': GetMakefileTargets(),
"             \ 'sink': '15Term make',
"             \ 'down': '30%',
"             \ })<CR>

" inoremap <expr> <c-x><c-l> fzf#vim#complete(fzf#wrap({
"   \ 'prefix': '^.*$',
"   \ 'source': 'rg -n ^ --color always',
"   \ 'options': '--ansi --delimiter : --nth 3..',
"   \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))

" function! s:make_sentence(lines)
" return substitute(join(a:lines), '^.', '\=toupper(submatch(0))', '').'.'
" endfunction

" inoremap <expr> <c-x><c-s> fzf#vim#complete({
"     \ 'source':  'cat /usr/share/dict/words',
"     \ 'reducer': function('<sid>make_sentence'),
"     \ 'options': '--multi --reverse --margin 15%,0',
"     \ 'left':    40})

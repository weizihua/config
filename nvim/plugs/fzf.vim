nnoremap <silent><leader>fa :Rg<CR>
nnoremap <silent><leader>ff :execute 'FZF' FindRootDirectory()<CR>
nnoremap <silent><leader>fF :GFiles<CR>
nnoremap <silent><leader>fb :Buffers<CR>
nnoremap <silent><leader><leader> :Buffers<CR>
nnoremap <silent><leader>fT :Tags<CR>
nnoremap <silent><leader>ft :BTags<CR>
nnoremap <silent><leader>fC :Commits<CR>
nnoremap <silent><leader>fc :BCommits<CR>
nnoremap <silent><leader>fm :Marks<CR>
nnoremap <silent><leader>fs :Snippets<CR>
nnoremap <silent><leader>fw :Windows<CR>

let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }

let $FZF_DEFAULT_OPTS = "--reverse --keep-right
            \ --bind='ctrl-p:toggle-preview'"


let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'Normal', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['Keyword', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Statement'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


" Always enable preview window on the right with 60% width
let g:fzf_preview_window = 'right:50%:hidden'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'

let g:fzf_layout = { 'window': {
            \ 'width': 0.9,
            \ 'height': 0.5,
            \ 'border': 'sharp' } }

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

" Make the Ack command use the rg command for search
let g:ackprg = 'rg --vimgrep'
let g:grepprg = 'rg --vimgrep'

" Search Shortcuts
nnoremap <leader>sgf :Rg<Space>
nnoremap <leader>sgg :Ack!<Space>
nnoremap <leader>sgw :exe "Ack! " . expand("<cword>")<CR>
nnoremap <leader>sbb :Ack!  %<Left><Left>
nnoremap <leader>sbw :exe "Ack! " . expand("<cword>") . " %"<CR>

" Replace Shortcuts
nnoremap <leader>rr :cfdo %s///g <bar> update<left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>rbw :exe "/" . expand("<cword>")<CR> :exe "%s/" . expand("<cword>") . "//g"<left><left><left>
nnoremap <leader>rbb :%s///g<left><left><left><left>
vnoremap <leader>rvv <Esc>/\%V//g<left><left><left>

" Quick search Shortcuts
vnoremap <silent> <leader>/ y/\V<C-r>=escape(@",'/\')<CR><CR>
nnoremap <silent> <leader>/ :exe "/" . expand("<cword>")<CR>
vnoremap <leader>R :s/%V//g"<left><left><left><left>

vnoremap / <Esc>/\%V
vnoremap ? <Esc>?\%V

command Todo execute "Ack '// TODO:\|// FIXME:'"


" Quicklist navigation
"
command! ClearQuickfixList cexpr [] | cclose
command! RemoveQFItem :call RemoveQFItem()

nnoremap <leader>si :call ToggleIgnoreCase()<CR>
nnoremap <silent> <leader>qc :ClearQuickfixList<CR>

autocmd FileType qf map <silent> <buffer> dd :RemoveQFItem<cr>

nnoremap <silent> <M-2> :call ToggleQuickFix()<CR>
nnoremap <leader>qh :cfirst<CR>
nnoremap <leader>ql :clast<CR>
nnoremap <leader>qj :cnext<CR>
nnoremap <leader>qk :cprev<CR>

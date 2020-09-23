" tmux-navigation
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" tmux-resizer
let g:tmux_resizer_no_mappings = 1
nnoremap <silent> <M-h> :TmuxResizeLeft<cr>
nnoremap <silent> <M-j> :TmuxResizeDown<cr>
nnoremap <silent> <M-k> :TmuxResizeUp<cr>
nnoremap <silent> <M-l> :TmuxResizeRight<cr>

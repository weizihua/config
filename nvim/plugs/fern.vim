nnoremap <silent> <a-1> :execute "Fern " . getcwd() . " -drawer -toggle -reveal=%"<CR>

" nnoremap <silent> <localleader>1 :execute "Fern " . getcwd() " -drawer -reveal=%"<CR>
" nnoremap <silent> <a-1> :execute "Fern " . getcwd() " -drawer -reveal=%"<CR>


" let g:fern#smart_cursor = 'hide'
let g:fern#drawer_width = 50
let g:fern#default_hidden = 0
let g:fern#default_exclude = 'target'
" let g:fern#smart_cursor = 'hide'
let g:fern#mark_symbol = '>'
" let g:fern#scheme#file#show_absolute_path_on_root_label = 1
let g:fern#renderer#nerdfont#leading = "  "
let g:fern#renderer#nerdfont#padding = "  "

function! s:init_fern() abort
    " Openers
    nmap <buffer> S <Plug>(fern-action-open:split)
    nmap <buffer> V <Plug>(fern-action-open:vsplit)
    nmap <buffer> T <Plug>(fern-action-open:tabedit)

    " Operations
    nmap <buffer> R <Plug>(fern-action-rename)
    nmap <buffer> M <Plug>(fern-action-move)
    nmap <buffer> C <Plug>(fern-action-copy)
    nmap <buffer> N <Plug>(fern-action-new-path)
    nmap <buffer> F <Plug>(fern-action-new-file)
    nmap <buffer> D <Plug>(fern-action-new-dir)
    nmap <buffer> dd <Plug>(fern-action-remove)
    nmap <buffer> YY <Plug>(fern-action-clipboard-copy)
    nmap <buffer> YP <Plug>(fern-action-yank:path)
    nmap <buffer> Y <Plug>(fern-action-clipboard-move)
    nmap <buffer> P <Plug>(fern-action-clipboard-paste)

    nmap <buffer> <C-space> <Plug>(fern-action-mark)
    nmap <buffer> <C-r> <Plug>(fern-action-reload:all)
    nmap <buffer> <C-h> <Plug>(fern-action-hidden:toggle)
    nmap <buffer> <C-i> <Plug>(fern-action-include)
    nmap <buffer> <C-e> <Plug>(fern-action-exclude)
    set norelativenumber
    set nonumber
    set foldmethod=manual
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
  autocmd FileType fern syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup END

let g:fern#renderer = "nerdfont"

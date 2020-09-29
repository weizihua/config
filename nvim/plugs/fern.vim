nnoremap <silent> <localleader>1 :execute "Fern " . getcwd() " -drawer -toggle -reveal=%"<CR>
" nnoremap <silent> <leader>e :execute "Fern " . getcwd() " -drawer -reveal=%"<CR>


let g:fern#drawer_width = 50
let g:fern#default_hidden = 0
let g:fern#default_exclude = 'target'
" let g:fern#smart_cursor = 'hide'
let g:fern#mark_symbol = '>'
" let g:fern#scheme#file#show_absolute_path_on_root_label = 1
let g:fern#renderer#nerdfont#leading = "  "
let g:fern#renderer#nerdfont#padding = "  "

function! s:init_fern() abort
    nmap <buffer> S <Plug>(fern-action-open:split)
    nmap <buffer> V <Plug>(fern-action-open:vsplit)
    nmap <buffer> R <Plug>(fern-action-rename)
    nmap <buffer> M <Plug>(fern-action-move)
    nmap <buffer> C <Plug>(fern-action-copy)
    nmap <buffer> N <Plug>(fern-action-new-path)
    nmap <buffer> F <Plug>(fern-action-new-file)
    nmap <buffer> D <Plug>(fern-action-new-dir)
    nmap <buffer> H <Plug>(fern-action-hidden:toggle)
    nmap <buffer> E <Plug>(fern-action-exclude)
    nmap <buffer> dd <Plug>(fern-action-remove)
    nmap <buffer> A <Plug>(fern-action-mark)
    set norelativenumber
    set nonumber
endfunction

augroup fern-custom
  autocmd! *
  autocmd FileType fern call s:init_fern()
  autocmd FileType fern syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup END

let g:fern#renderer = "nerdfont"

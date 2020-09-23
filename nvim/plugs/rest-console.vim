" let g:vrc_split_request_body = 1
let g:vrc_output_buffer_name = '__HTTP_OUTPUT__'
let g:vrc_set_default_mapping = 0
let b:vrc_response_default_content_type = 'application/json'
" let g:vrc_trigger='<localleader>r'
let g:vrc_trigger = '<C-k>'

au FileType rest nnoremap <buffer> <localleader>r :call VrcQuery()<CR>

" let g:vrc_show_command = 1
" let g:vrc_debug = 1

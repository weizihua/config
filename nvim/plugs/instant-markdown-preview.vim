"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
let g:instant_markdown_autoscroll = 1
let g:instant_markdown_browser = g:default_browser
let g:instant_markdown_port = 1111
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'

au BufRead,BufNewFile *.md setlocal wrap linebreak nolist
nnoremap <leader>pp :InstantMarkdownPreview<CR>
nnoremap <leader>ps :InstantMarkdownStop<CR>

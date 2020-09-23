let g:go_bin_path = "/bin"
autocmd FileType go nmap <leader>rb  <Plug>(go-build)
autocmd FileType go nmap <leader>rr  <Plug>(go-run)
autocmd FileType go nmap <leader>rt  <Plug>(go-test)

" Autoimport the libs at save
let g:go_fmt_command = "goimports"

" Camel Case Tags
let g:go_addtags_transform = "camelcase"

" Linter on save
let g:go_metalinter_autosave = 1

let g:go_term_mode = "split"
let g:go_term_height = 15



" Enable highlighting
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_info_str = 'Info'
let g:ale_echo_msg_format = '%s'

" I have some custom icons for errors and warnings but feel free to change them.
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

" Show warnings and errors in the status line
let g:airline#extensions#ale#enabled = 1

" Disable or enable loclist at the bottom of vim 
" Comes down to personal preferance.
let g:ale_open_list = 0
let g:ale_loclist = 0

" let g:ale_java_javac_options = "-cp /usr/share/java/lombok/lombok.jar"
" let g:ale_java_javac_classpath = '/usr/share/java/lombok/lombok.jar'

let g:ale_disable_lsp = 1

" Setup compilers for languages
let g:ale_linters_explicit = 1
let g:ale_linters = {
      \  'python': ['pylint'],
      \  'java': ['javac']
      \ }


let g:ale_fixers = {
      \  'java': ['google_java_format'],
      \ }


hi ALEErrorSign ctermfg=1
hi ALEWarningSign ctermfg=11
hi ALEInfoSign ctermfg=3


" let g:ale_completion_enabled = 1
" set omnifunc=ale#completion#OmniFunc
" let g:ale_completion_autoimport = 1
" let g:ale_java_checkstyle_config = "/"
" let g:ale_java_checkstyle_executable = ""
" let g:ale_java_javac_classpath = ""

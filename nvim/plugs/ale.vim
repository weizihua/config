" Shorten error/warning flags
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
" I have some custom icons for errors and warnings but feel free to change them.
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'

" Disable or enable loclist at the bottom of vim 
" Comes down to personal preferance.
let g:ale_open_list = 0
let g:ale_loclist = 0

" let g:ale_java_javac_options = "javac -cp /usr/share/java/lombok/lombok.jar"
" let g:ale_java_javac_executable = "javac -cp /usr/share/java/lombok/lombok.jar"
" 

" Setup compilers for languages
let g:ale_linters = {
      \  'python': ['pylint'],
      \  'java': ['javac']
      \ }


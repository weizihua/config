au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent

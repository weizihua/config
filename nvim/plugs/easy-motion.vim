 " Disable default mappings
let g:EasyMotion_do_mapping = 0

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" Letters to be used in the motion, last letter is the grouping motion
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyz'
" let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ,'

nmap s <Plug>(easymotion-bd-f)
nmap S <Plug>(easymotion-overwin-f)

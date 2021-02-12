" Map leader and localleader keys
let mapleader = "\<Space>"
let maplocalleader = ","


" ===== Disable arrow keys ===== {{{
no <down> <Nop>
no <up> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <down> <Nop>
ino <up> <Nop>
ino <left> <Nop>
ino <right> <Nop>
" }}}

" ===== Clipboard ===== {{{
vnoremap Y "+y
nnoremap YY "+yy
" }}}


" Reload vimrc
nnoremap <localleader>! :source ~/.vimrc<CR> :echo "Config reloaded..."<CR>

" ===== Mover ===== {{{
" move lines up and down with ALT+J/K
inoremap <M-down> <Esc>:m .+1<CR>==gi
inoremap <M-up> <Esc>:m .-2<CR>==gi
vnoremap <M-down> :m '>+1<CR>gv=gv
vnoremap <M-up> :m '<-2<CR>gv=gv
nnoremap <M-down> :m .+1<CR>==
nnoremap <M-up> :m .-2<CR>==
" }}}

nnoremap <silent> <localleader><space> :%s/\s\+$//e<CR> :echo "Trailing white space removed"<CR>

" ===== Scroll ===== {{{
"  vertical scroll
" nnoremap <M-[> 5zh
" nnoremap <M-]> 5zl
" }}}

" ===== Info ===== {{{
nnoremap <leader>ip :echom expand('%:p')<CR>
" }}}

" ===== Completion ===== {{{
" make C-j and C-k scroll in completion instead of C-n and C-p
" inoremap <expr> <tab> ((pumvisible())?("\<C-y>"):("\<tab>"))
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" }}}

inoremap <C-CR> <Esc>o
nnoremap <S-CR> o<Esc>k
nnoremap <M-CR> O<Esc>j
" nnoremap <Space> o<Esc>k
" nnoremap <C-Space> O<Esc>j

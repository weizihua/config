let g:floaterm_width=0.9
let g:floaterm_height=0.9
let g:floaterm_title="TERMINAL $1/$2"
" let g:floaterm_title=""

command TermNew :FloatermNew
command TermNext :FloatermNext
command TermPrev :FloatermPrev
command TermKill :FloatermKill
command Term :FloatermToggle

nnoremap <silent><M-5> :FloatermToggle RUN<CR>
tnoremap <silent><M-5> <C-\><C-n>:FloatermToggle RUN<CR>

nnoremap <silent><M-7> :FloatermToggle VIFM<CR>
tnoremap <silent><M-7> <C-\><C-n>:FloatermToggle VIFM<CR>



nnoremap   <silent>   <M-=>   :FloatermNew<CR>
tnoremap   <silent>   <M-=>   <C-\><C-n>:FloatermNew<CR>

nnoremap   <silent>   <M-`>   :FloatermToggle<CR>
tnoremap   <silent>   <M-`>   <C-\><C-n>:FloatermToggle<CR>

nnoremap   <silent>   <M-->    :FloatermKill<CR>
tnoremap   <silent>   <M-->    <C-\><C-n>:FloatermKill<CR>

nnoremap   <silent>   <M-[>    :FloatermPrev<CR>
tnoremap   <silent>   <M-[>    <C-\><C-n>:FloatermPrev<CR>

nnoremap   <silent>   <M-]>    :FloatermNext<CR>
tnoremap   <silent>   <M-]>    <C-\><C-n>:FloatermNext<CR>

" Kill all floaterms
nnoremap   <silent>   <M-_>    :FloatermKill!<CR>
tnoremap   <silent>   <M-_>    <C-\><C-n>:FloatermKill!<CR>

" Toggle wintype: split 
nnoremap   <silent>   <M-s>    :FloatermUpdate --wintype=split --height=0.4<CR>
tnoremap   <silent>   <M-s>    <C-\><C-n>:FloatermUpdate --wintype=split --height=0.4<CR>

" Toggle wintype: float 
nnoremap   <silent>   <M-f>    :FloatermUpdate --wintype=float --position=center --height=0.9<CR>
tnoremap   <silent>   <M-f>    <C-\><C-n>:FloatermUpdate --wintype=float --position=center --height=0.9<CR>



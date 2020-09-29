" map <leader>vv :call ToggleHiddenAll()<CR> :Vifm<CR>
"
" Variables
let g:vifm_replace_netrw = 1

" Commands
command! FloatVifm FloatermNew --name='vifm' vifm

" Mappings
map <silent> <leader>e :FloatVifm<CR>
map <leader>vs :VsplitVifm<CR>
map <leader>sp :SplitVifm<CR>
map <leader>dv :DiffVifm<CR>
map <leader>tv :TabVifm<CR>


nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gdd :Gvdiff<CR>
nnoremap <leader>gds :Gdiffsplit!<CR>
" nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>ga :Gcommit --amend<CR>
nnoremap <leader>gt :Gcommit -v -q %<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :Gclog<CR>
nnoremap <leader>gg :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
" nnoremap <leader>gb :Git branch<Space>
" nnoremap <leader>go :Git checkout<Space>
" nnoremap <leader>gps :Dispatch! git push<CR>
" nnoremap <leader>gpl :Dispatch! git pull<CR>
nnoremap <leader>gdh :diffget //2<CR>
nnoremap <leader>gdl :diffget //3<CR>
" Jump between hunks
" nnoremap [g <Plug>(GitGutterNextHunk)
" nnoremap ]g <Plug>(GitGutterPrevHunk)

nnoremap <leader>gpd :FloatermNew git pull origin develop<CR>
nnoremap <leader>gpm :FloatermNew git pull origin master<CR>
nnoremap <leader>gPd :FloatermNew git push origin develop<CR>
nnoremap <leader>gPm :FloatermNew git push origin master<CR>

" Switch master and develop branches
nnoremap <leader>gbm :FloatermNew git checkout master<CR>
nnoremap <leader>gbd :FloatermNew git checkout develop<CR>

" Switch to branch
nnoremap <silent><leader>gb :call fzf#run({
            \ 'source': GetGitBranchList(),
            \ 'sink': '10Term git checkout',
            \ 'down': '20%',
            \ })<CR>

" Toggle changed lines and sign
nnoremap \gg :GitGutterSignsToggle<CR>
nnoremap \gl :GitGutterLineHighlightsToggle<CR>



"Delete all Git conflict markers
"Creates the command :GremoveConflictMarkers
function! RemoveConflictMarkers() range
  execute a:firstline.','.a:lastline . ' g/^<\{7}\|^|\{7}\|^=\{7}\|^>\{7}/d'
endfunction
"-range=% default is whole file
command! -range=% GremoveConflictMarkers <line1>,<line2>call RemoveConflictMarkers()

" Re-read the file on focus and save buffer on focus lost
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! noautocmd w

" Save the text folding
au BufWinLeave *.* mkview
au BufWinEnter *.* silent! loadview
" }}}

au BufNewFile,BufRead /*.rasi setf css

" Open the file unfolded always
autocmd BufWinEnter * silent! :%foldopen!

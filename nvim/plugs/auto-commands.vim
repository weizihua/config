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

" executed whenever the color theme was changed
function! AdaptColorscheme()
    highlight clear CursorLine
    highlight Normal ctermbg=none
    highlight LineNr ctermbg=none
    highlight Folded ctermbg=none
    highlight NonText ctermbg=none
    highlight SpecialKey ctermbg=none
    highlight VertSplit ctermbg=none
    highlight SignColumn ctermbg=none
endfunction
autocmd ColorScheme * call AdaptColorscheme()

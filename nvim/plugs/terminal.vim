nnoremap <leader>tt :TTerm<space>
nnoremap <leader>tv :VTerm<space>
nnoremap <leader>ts :Term<space>

augroup TerminalStuff
   au!
  autocmd TermOpen * setlocal nonumber norelativenumber
augroup END


let s:terminal_window = -1
let s:terminal_buffer = -1
let s:terminal_job_id = -1

function! TerminalOpen()
  " Check if buffer exists, if not create a window and a buffer
  if !bufexists(s:terminal_buffer)
    " Creates a window call terminal
    new terminal
    " Moves to the window the right the current one
    wincmd J
    let s:terminal_job_id = termopen($SHELL, { 'detach': 1 })

     " Change the name of the buffer to "Terminal 1"
     silent file Terminal\ 1
     " Gets the id of the terminal window
     let s:terminal_window = win_getid()
     let s:terminal_buffer = bufnr('%')

    " The buffer of the terminal won't appear in the list of the buffers
    " when calling :buffers command
    set nobuflisted
  else
    if !win_gotoid(s:terminal_window)
    sp
    " Moves to the window below the current one
    wincmd J   
    buffer Terminal\ 1
     " Gets the id of the terminal window
     let s:terminal_window = win_getid()
    endif
  endif
endfunction

function! TerminalToggle()
  if win_gotoid(s:terminal_window)
    call TerminalClose()
  else
    call TerminalOpen()
  endif
endfunction

function! TerminalClose()
  if win_gotoid(s:terminal_window)
    " close the current window
    hide
  endif
endfunction

function! TerminalExec(cmd)
  if !win_gotoid(s:terminal_window)
    call TerminalOpen()
  endif

  " clear current input
  call jobsend(s:terminal_job_id, "clear\n")

  " run cmd
  call jobsend(s:terminal_job_id, a:cmd . "\n")
  normal! G
  wincmd p
endfunction

" With this maps you can now toggle the terminal
nnoremap <silent> <a-0> :call TerminalToggle()<cr>
tnoremap <silent> <a-0> <C-\><C-n>:call TerminalToggle()<cr>

nnoremap <F5> :call TerminalExec('mvn spring-boot:run')<cr>


" Toggle 'default' terminal
nnoremap <M-4> :call ChooseTerm("run", 1)<CR>
nnoremap <M-5> :call ChooseTerm("debug", 1)<CR>
" Start terminal in current pane
" nnoremap <M-CR> :call ChooseTerm("term-pane", 0)<CR>

function! ChooseTerm(termname, slider)
	let pane = bufwinnr(a:termname)
	let buf = bufexists(a:termname)
	if pane > 0
		" pane is visible
		if a:slider > 0
			:exe pane . "wincmd c"
		else
			:exe "e #" 
		endif
	elseif buf > 0
		" buffer is not in pane
		if a:slider
			:exe "split"
		endif
		:exe "buffer " . a:termname
	else
		" buffer is not loaded, create
		if a:slider
			:exe "split"
		endif
		:terminal
		:exe "f " a:termname
	endif
endfunction

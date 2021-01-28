command! DebugStart  :CocCommand java.debug.vimspector.start
command! DebugStop   :VimspectorReset

nmap <F5>         <Plug>VimspectorContinue
nmap <S-F5>       <Plug>VimspectorReset
nmap <C-S-F5>     <Plug>VimspectorRestart
nmap <F6>         <Plug>VimspectorPause
nmap <F9>         <Plug>VimspectorToggleBreakpoint
nmap <S-F9>       <Plug>VimspectorAddFunctionBreakpoint
nmap <F10>        <Plug>VimspectorStepOver
nmap <F11>        <Plug>VimspectorStepInto
nmap <S-F11>      <Plug>VimspectorStepOut

" ----------- Default VISUAL STUDTIO BINDING --------
" F5                - When debugging, continue. Otherwise start debugging.
" Shift + F5        - Stop debugging.
" Ctrl + Shift + F5 - Restart debugging with the same configuration.
" F6                - Pause debuger.
" F9                - Toggle line breakpoint on the current line.
" Shift + F9        - Add a function breakpoint for the expression under cursor
" F10               - Step Over
" F11               - Step Into
" F11               - Step out of current function scope
" -----------------------------------------------------------------

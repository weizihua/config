let java_highlight_functions = 1
let java_highlight_all = 1

au FileType java setlocal omnifunc=javacomplete#Complete
au FileType java inoremap <buffer> <S-CR> <Esc>A;<CR>
au FileType java nnoremap <buffer> <S-CR> A;<CR>
au FileType java nnoremap <buffer> <localleader>o :OR<CR>
au FileType java nnoremap <buffer> <localleader>c :CocCommand java.workspace.compile<CR>
au FileType java nnoremap <buffer> <localleader>0 :CocCommand java.clean.workspace<CR>

" Execute current java file
au FileType java nnoremap <buffer> <leader>rr :exec '15Term java ' . expand("%:t")<CR>

command MakeRun execute "FloatermNew --name=RUN --title=RUN --width=0.9 --height=0.9 --autoclose=0 make run"
command MakeDebug execute "FloatermNew --name=RUN --title=DEBUG --width=0.9 --height=0.9 --autoclose=0 make debug"
command MakeTest execute "FloatermNew --name=RUN --title=DEBUG --width=0.9 --height=0.9 --autoclose=0 make test"
command MakeClean execute "FloatermNew --name=RUN --title=DEBUG --width=0.9 --height=0.9 --autoclose=1 make clean"
command MakeBuild execute "FloatermNew --name=RUN --title=DEBUG --width=0.9 --height=0.9 --autoclose=0 make build"
command MakeInstall execute "FloatermNew --name=RUN --title=DEBUG --width=0.9 --height=0.9 --autoclose=0 make install"
command MakeReimport execute "FloatermNew --name=RUN --title=DEBUG --width=0.9 --height=0.9 --autoclose=1 make reimport"
command Terminal execute "FloatermNew --name=TERMINAL --title=TERMINAL --width=0.9 --height=0.9"

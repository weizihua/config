let g:dbext_default_profile_nabucco_app_local='type=pgsql:host=192.168.0.5:user=nabucco_app:dsnname=nabucco:dbname=nabucco:passwd=nabucco_app'
let g:dbext_default_profile_nabucco_app_dev='type=pgsql:host=k8s.dev.tekaef-saas.com:user=nabucco_app:dsnname=nabucco:dbname=nabucco:passwd=nabucco_app'
let g:dbext_default_profile='nabucco_app_local'

" Disable default mappings
let g:dbext_default_usermaps = 0

" Mappings
xnoremap <leader>de :DBExecVisualSQL<CR>
xnoremap <leader>dE :DBExecVisualSQLTopX<CR>
nnoremap <leader>de :DBExecSQLUnderCursor<CR>
nnoremap <leader>dE :DBExecSQLUnderCursorTopX<CR>
nnoremap <leader>dq :DBExecSQL<space>
nnoremap <silent> <leader>da :1,$DBExecRangeSQL<CR>
nnoremap <silent> <leader>dl :.,.DBExecRangeSQL<CR>
nnoremap <silent> <leader>dep :'<,'>".'DBExecRangeSQL<CR>
nnoremap <leader>dt :DBSelectFromTable<CR>
xnoremap <silent> <leader>dt :<C-U>exec '.'"'."DBSelectFromTable '".'".DB_getVisualBlock()."'."'".'"'.'<CR>
nnoremap <leader>dtw :DBSelectFromTableWithWhere<CR>
nnoremap <leader>dta :DBSelectFromTableAskName<CR>
nnoremap <leader>dT :DBSelectFromTableTopX<CR>
xnoremap <silent> <leader>dT :<C-U>exec '.'"'."DBSelectFromTableTopX '".'".DB_getVisualBlock()."'."'".'"'.'<CR>
nnoremap <leader>ddt :DBDescribeTable<CR>
xnoremap <silent> <leader>ddt :<C-U>exec '.'"'."DBDescribeTable '".'".DB_getVisualBlock()."'."'".'"'.'<CR>
nnoremap <leader>ddta :DBDescribeTableAskName<CR>
nnoremap <leader>ddp :DBDescribeProcedure<CR>
xnoremap <silent> <leader>ddp :<C-U>exec '.'"'."DBDescribeProcedure '".'".DB_getVisualBlock()."'."'".'"'.'<CR>
nnoremap <leader>ddpa :DBDescribeProcedureAskName<CR>
nnoremap <leader>dbp :DBPromptForBufferParameters<CR>
nnoremap <leader>dlc :DBListColumn<CR>
xnoremap <silent> <leader>dlc :<C-U>exec '.'"'."DBListColumn '".'".DB_getVisualBlock()."'."'".'"'.'<CR>
nnoremap <leader>dlt :DBListTable<CR>
nnoremap <leader>dlT :DBListType<CR>
nnoremap <leader>dlp :DBListProcedure<CR>
nnoremap <leader>dlv :DBListView<CR>
nnoremap <leader>dtcl :DBListColumn<CR>
xnoremap <silent> <leader>dtcl :<C-U>exec '.'"'."DBListColumn '".'".DB_getVisualBlock()."'."'".'"'.'<CR>
nnoremap <leader>dh :DBHistory<CR>
nnoremap <leader>do :DBOrientationToggle<CR>
nnoremap <silent> <leader>das :1,$DBVarRangeAssign<CR>
nnoremap <silent> <leader>dal :.,.DBVarRangeAssign<CR>
nnoremap <silent> <leader>dap :'."'<,'>".'DBVarRangeAssign<CR>
xnoremap <silent> <leader>da :DBVarRangeAssign<CR>
nnoremap <silent> <leader>dlr :DBListVar<CR>

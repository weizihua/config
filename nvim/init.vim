" ===== General ===== {{{
" Map leader and localleader keys
let mapleader = "\<Space>"
let maplocalleader = ","

" Load plugins
source ~/.config/nvim/plugins.vim

" Load functions
source ~/.config/nvim/functions.vim

" Reload vimrc
nnoremap <localleader>! :source ~/.vimrc<CR> :echo "Config reloaded..."<CR>

" Write and Quit
nnoremap <localleader>w :w<CR>
nnoremap <localleader>q :x<CR>
" }}}
"

" ===== Neovim Providers ===== {{{
"
" Disable perl provider
let g:loaded_perl_provider = 0

" Disable python2 provider
let g:loaded_python_provider = 0

" Disable ruby provider
let g:loaded_ruby_provider = 0

" Disable npm provider
let g:loaded_node_provider = 0

" }}}
"

" Open the file unfolded always
autocmd BufWinEnter * silent! :%foldopen!

" ===== Settings ===== {{{
syntax enable
" colorscheme onedark
colorscheme gruvbox
hi Normal ctermfg=252 ctermbg=234
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg

set nowrap
set hidden
set number
set relativenumber
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set autowrite
set cursorline
set autoread
set splitbelow
set splitright
set autochdir
set mouse=a
set encoding=utf-8
set expandtab
set nocompatible
set diffopt+=vertical
set noignorecase
set smartcase
set sidescroll=1
set scrolloff=10
set conceallevel=2
set switchbuf=usetab
set showtabline=0
set sessionoptions+=tabpages,globals
set ttimeoutlen=0
set foldmethod=marker

" hide tilde on blank lines
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg

filetype plugin indent on
set autoindent

set noswapfile
set nobackup
set nowritebackup
" set backupdir=~/.vim/backup/
" set directory=~/.vim/backup/

" Undo
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "", 0700)
endif
set undodir=~/.vim/undo
set undofile

set updatetime=300
set shortmess+=c
set signcolumn=yes
" }}}

" ===== AirLine ===== {{{

" unicode symbols

let g:airline_theme='onedark'
let g:airline_left_sep = ''
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_right_sep = ''

let g:airline_powerline_fonts = 1
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
let g:airline_theme='base16'
" let g:airline_theme='papercolor'
let g:airline#extensions#taboo#enabled = 1
let g:airline#extensions#vimagit#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
" let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#fnamemod = ':t'
" }}}

" ===== Rooter ===== {{{
let g:rooter_silent_chdir = 1
" }}}

" ===== CtrlSpace ===== {{{
" let g:CtrlSpaceDefaultMappingKey = "<C-p> "
" }}}

" ===== Rainbow ===== {{{
let g:rainbow_active = 1
nnoremap <F9> :RainbowToggle<CR>
" }}}

" ===== Rest Console ===== {{{
" let g:vrc_split_request_body = 1
let g:vrc_output_buffer_name = '__HTTP_OUTPUT__'
let g:vrc_set_default_mapping = 0
let b:vrc_response_default_content_type = 'application/json'
" let g:vrc_trigger='<localleader>r'
let g:vrc_trigger = '<C-k>'

au FileType rest nnoremap <buffer> <localleader>r :call VrcQuery()<CR>

" let g:vrc_show_command = 1
" let g:vrc_debug = 1
" }}}

" ===== Mover ===== {{{
" move lines up and down with ALT+J/K
inoremap <M-down> <Esc>:m .+1<CR>==gi
inoremap <M-up> <Esc>:m .-2<CR>==gi
vnoremap <M-down> :m '>+1<CR>gv=gv
vnoremap <M-up> :m '<-2<CR>gv=gv
nnoremap <M-down> :m .+1<CR>==
nnoremap <M-up> :m .-2<CR>==
" Not working
" let g:move_key_modifier = 'T'
" }}}

" ===== Editor ===== {{{
nnoremap <silent> <localleader><space> :%s/\s\+$//e<CR> :echo "Trailing white space removed"<CR>
" }}}

" ===== Easy Align ===== {{{
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap <silent> <localleader>a <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap <silent> <localleader>a <Plug>(EasyAlign)
" }}}

" ===== Scroll ===== {{{
"  vertical scroll
nnoremap <M-[> 5zh
nnoremap <M-]> 5zl
" }}}

" ===== Easymotion ===== {{{
 " Disable default mappings
let g:EasyMotion_do_mapping = 0

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" Letters to be used in the motion, last letter is the grouping motion
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ,'

nmap s <Plug>(easymotion-bd-f)
nmap S <Plug>(easymotion-overwin-f)
" }}}

" ===== UltiSnip ===== {{{
let g:UltiSnipsSnippetsDir="~/.config/nvim/UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
" }}}

" ===== NERDCommenter ===== {{{
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Add your own custom formats or override the defaults
" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
" }}}

" ===== NERDTree ===== {{{
map <localleader>1 :NERDTreeToggle<CR>
nmap <leader>fl :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true

" Remove square brackets
augroup nerdtreeconcealbrackets
      autocmd!
      autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
      autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL
      autocmd FileType nerdtree setlocal conceallevel=3
      autocmd FileType nerdtree setlocal concealcursor=nvic
augroup END

" Remove the last slash from directory names
augroup nerdtreehidetirslashes
	autocmd!
	autocmd FileType nerdtree syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif

" Hide dir path
" augroup nerdtreehidecwd
"   autocmd!
"   autocmd FileType nerdtree setlocal conceallevel=3
"           \ | syntax match NERDTreeHideCWD #^[</].*$# conceal
"           \ | setlocal concealcursor=n
" augroup end

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹ ",
    \ "Staged"    : "✚ ",
    \ "Untracked" : "✭ ",
    \ "Renamed"   : "➜ ",
    \ "Unmerged"  : "═ ",
    \ "Deleted"   : "✖ ",
    \ "Dirty"     : "✗ ",
    \ "Clean"     : "✔︎ ",
    \ 'Ignored'   : '☒ ',
    \ "Unknown"   : "? "
    \ }

" }}}

" ===== VimWiki ===== {{{
let default_wiki = {}
let default_wiki.auto_export = 0
let default_wiki.auto_toc = 0
let default_wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'sh': 'sh'}
let default_wiki.syntax = 'markdown'
let default_wiki.ext = '.md'

let work_wiki = copy(default_wiki)
let work_wiki.name = 'Work'
let work_wiki.path = '~/Notes/work'
let work_wiki.path_html = '~/Notes/work/html'
let work_wiki.path_pdf = '~/Notes/work/pdf'

let personal_wiki = copy(default_wiki)
let personal_wiki.name = 'Personal'
let personal_wiki.path = '~/Notes/personal'
let personal_wiki.path_html = '~/Notes/personal/html'
let personal_wiki.path_pdf = '~/Notes/personal/pdf'

let g:vimwiki_list = [personal_wiki, work_wiki]

" disable folding
let g:vim_markdown_folding_disabled = 1

" Disable default key mappings
let g:vim_markdown_no_default_key_mappings = 1

let g:vim_markdown_fenced_languages = ['csharp=cs', 'javascript', 'java', 'ini=dosini', 'json', 'xml', 'yaml', 'yml']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 2
let g:vim_markdown_autowrite = 1

" Remap conflicting Vimwiki mappings
" TODO: change the mapping
nnoremap >wi <Plug>VimwikiIndex
nnoremap >wI <Plug>VimwikiDiaryIndex
nnoremap >wm <Plug>VimwikiUISelect
" }}}

" ===== Instant Markdown Preview ===== {{{
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
" }}}

" ===== File type settings ===== {{{
au BufRead,BufNewFile *.md setlocal wrap linebreak nolist
" }}}

" ===== FZF ===== {{{
nnoremap <leader>fa :Rg<CR>
nnoremap <leader>ff :FZF<CR>
nnoremap <leader>fF :GFiles<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader><leader> :Buffers<CR>
nnoremap <leader>ft :BTags<CR>
nnoremap <leader>fT :Tags<CR>
nnoremap <leader>fC :Commits<CR>
nnoremap <leader>fc :BCommits<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fs :Snippets<CR>
nnoremap <leader>fw :Windows<CR>

let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-s': 'split',
            \ 'ctrl-v': 'vsplit' }

" nnoremap <silent><leader>mm :call fzf#run({
"             \ 'source': GetMakefileTargets(),
"             \ 'sink': '15Term make',
"             \ 'down': '30%',
"             \ })<CR>

" inoremap <expr> <c-x><c-l> fzf#vim#complete(fzf#wrap({
"   \ 'prefix': '^.*$',
"   \ 'source': 'rg -n ^ --color always',
"   \ 'options': '--ansi --delimiter : --nth 3..',
"   \ 'reducer': { lines -> join(split(lines[0], ':\zs')[2:], '') }}))

" function! s:make_sentence(lines)
" return substitute(join(a:lines), '^.', '\=toupper(submatch(0))', '').'.'
" endfunction

" inoremap <expr> <c-x><c-s> fzf#vim#complete({
"     \ 'source':  'cat /usr/share/dict/words',
"     \ 'reducer': function('<sid>make_sentence'),
"     \ 'options': '--multi --reverse --margin 15%,0',
"     \ 'left':    40})

" }}}

" ===== Search ===== {{{
command! ClearQuickfixList cexpr [] | cclose
command! RemoveQFItem :call RemoveQFItem()

nnoremap <leader>si :call ToggleIgnoreCase()<CR>
nnoremap <silent> <leader>qc :ClearQuickfixList<CR>

autocmd FileType qf map <silent> <buffer> dd :RemoveQFItem<cr>

" Make the Ack command use the rg command for search
let g:ackprg = 'rg --vimgrep'

" Search Shortcuts
nnoremap <leader>sgf :Rg<Space>
nnoremap <leader>sgg :Ack!<Space>
nnoremap <leader>sgw :exe "Ack! " . expand("<cword>")<CR>
nnoremap <leader>sbb :Ack!  %<Left><Left>
nnoremap <leader>sbw :exe "Ack! " . expand("<cword>") . " %"<CR>
nnoremap <silent> <leader>ss :call ToggleQuickFix()<CR>
nnoremap <leader>sf :cfirst<CR>
nnoremap <leader>sl :clast<CR>
nnoremap <leader>sn :cnext<CR>
nnoremap <leader>sp :cprev<CR>

" Replace Shortcuts
nnoremap <leader>rr :cfdo %s///g <bar> update<left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>rbw :exe "/" . expand("<cword>")<CR> :exe "%s/" . expand("<cword>") . "//g"<left><left><left>
nnoremap <leader>rbb :%s///g<left><left><left><left>
vnoremap <leader>rvv <Esc>/\%V//g<left><left><left>

" Quick search Shortcuts
vnoremap <silent> <leader>/ y/\V<C-r>=escape(@",'/\')<CR><CR>
nnoremap <silent> <leader>/ :exe "/" . expand("<cword>")<CR>
vnoremap <leader>R :s/%V//g"<left><left><left><left>

vnoremap / <Esc>/\%V
vnoremap ? <Esc>?\%V

nnoremap <silent> <localleader>2 :call ToggleQuickFix()<CR>
nnoremap <localleader>7 :Ack "// TODO:\|// FIXME:"<CR>
" }}}

" ===== Info ===== {{{
nnoremap <leader>ip :echom expand('%:p')<CR>
" }}}

" ===== Togglers ===== {{{
"
"------------------------------------------
nnoremap <localleader>3 :TagbarToggle<CR>
nnoremap <localleader>0 :UltiSnipsEdit<CR>
" nnoremap <F11> :call ToggleTabBar()<CR>
nnoremap <F12> :call ToggleHiddenAll()<CR>
"------------------------------------------
"
" }}}

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

" ===== Backslash ===== {{{
nnoremap \f :Filetypes<CR>
nnoremap \w :set wrap<CR>
nnoremap \W :set nowrap<CR>
nnoremap \m :set modifiable<CR>
nnoremap \M :set nomodifiable<CR>
nnoremap \t :call ToggleTabStops()<CR>
nnoremap \h :noh<CR>
" }}}

" ===== Buffers ===== {{{
nnoremap <silent> ]b :bNext<CR>
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]B :blast<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <leader>bn :bNext<CR>
nnoremap <leader>bb :bNext<CR>
nnoremap <leader>bp :bprevious<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>bq :bd!<CR>
nnoremap <leader>qa :bufdo bwipeout<CR>
nnoremap <leader>bo :BufOnly<CR>
nnoremap <leader><localleader> <C-^>
nnoremap <silent><leader>b0 :call CleanEmptyBuffers()<CR> :echo "Empty buffers cleanned"<CR>
" }}}

" ===== Windows ===== {{{
nnoremap <leader>ws :split<CR>
nnoremap <leader>wv :vsplit<CR>
nnoremap <leader>wo :only<CR>
nnoremap <leader>wd :close<CR>
nnoremap <leader>ww <C-w>w
nnoremap <leader>w= <C-w>=
nnoremap <leader>wh <C-w>H
nnoremap <leader>wl <C-w>L
nnoremap <leader>wj <C-w>J
nnoremap <leader>wk <C-w>K
" }}}

" ===== Tabs ===== {{{
nnoremap <leader>tc :tabnew<CR>
nnoremap <leader>td :windo bd<CR>
nnoremap <leader>tq :windo bd!<CR>
nnoremap <silent><leader>tw :sbp<bar>wincmd p<bar>wincmd T<CR> :echo "Moved buffer to a new tab"<CR>
nnoremap <leader>to :tabonly<CR>
nnoremap <leader>tt :tabnext<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader><tab> :tabnext<CR>
nnoremap <leader>tp :tabprev<CR>
nnoremap <leader>tmf :tabm 0<CR>
nnoremap <leader>tml :tabm<CR>
nnoremap <leader>tm1 :tabm 0<CR>
nnoremap <leader>tm2 :tabm 2<CR>
nnoremap <leader>tm3 :tabm 3<CR>
nnoremap <leader>tm4 :tabm 4<CR>
nnoremap <leader>tm5 :tabm 5<CR>
nnoremap <leader>tm6 :tabm 6<CR>
nnoremap <leader>tm7 :tabm 7<CR>
nnoremap <leader>tm8 :tabm 8<CR>
nnoremap <leader>tm9 :tabm 9<CR>
nnoremap <leader>1 :tabn 1<CR>
nnoremap <leader>2 :tabn 2<CR>
nnoremap <leader>3 :tabn 3<CR>
nnoremap <leader>4 :tabn 4<CR>
nnoremap <leader>5 :tabn 5<CR>
nnoremap <leader>6 :tabn 6<CR>
nnoremap <leader>7 :tabn 7<CR>
nnoremap <leader>8 :tabn 8<CR>
nnoremap <leader>9 :tabn 9<CR>
" }}}

" ===== Git ===== {{{
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gd :Gvdiff<CR>
" nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>ga :Gcommit --amend<CR>
nnoremap <leader>gt :Gcommit -v -q %<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>
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

nnoremap <leader>gpd :15Term git pull origin develop<CR>
nnoremap <leader>gpm :15Term git pull origin master<CR>
nnoremap <leader>gPd :15Term git push origin develop<CR>
nnoremap <leader>gPm :15Term git push origin master<CR>

" Switch master and develop branches
nnoremap <leader>gbm :10Term git checkout master<CR>
nnoremap <leader>gbd :10Term git checkout develop<CR>

" Switch to branch
nnoremap <silent><leader>gb :call fzf#run({
            \ 'source': GetGitBranchList(),
            \ 'sink': '10Term git checkout',
            \ 'down': '20%',
            \ })<CR>

" Toggle changed lines and sign
nnoremap \gg :GitGutterSignsToggle<CR>
nnoremap \gl :GitGutterLineHighlightsToggle<CR>
" }}}

" ===== Tmux ===== {{{
" tmux-navigation
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

" tmux-resizer
let g:tmux_resizer_no_mappings = 1
nnoremap <silent> <M-h> :TmuxResizeLeft<cr>
nnoremap <silent> <M-j> :TmuxResizeDown<cr>
nnoremap <silent> <M-k> :TmuxResizeUp<cr>
nnoremap <silent> <M-l> :TmuxResizeRight<cr>
" }}}

" ===== Autocommands ===== {{{
" Re-read the file on focus and save buffer on focus lost
au FocusGained,BufEnter * :silent! !
au FocusLost,WinLeave * :silent! noautocmd w

" Save the text folding
au BufWinLeave *.* mkview
au BufWinEnter *.* silent! loadview
" }}}

" ===== Table mode ===== {{{
let g:table_mode_corner='|'
" }}}

" ===== DBext ===== {{{
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
" }}}

" ===== Terminal Settings ===== {{{
" ----------------------------
" Add new line in normal mode
" ----------------------------
" To make the above working, need to change key mapping in terminal
"- iTerm2
"1. For a single Profile open Preferences → Profiles → Keys → [+] (Add)
"2. For all profiles open Preferences → Keys → [+] (Add)
"- Keyboard shortcut: (Hit Shift+Enter)
"- Action: Send Escape Sequence
"- Esc+ [13;2u
"- Repeat for Ctrl+Enter, with sequence: [13;5u
"
"- urxvt, append to your .Xresources file:
"-------------
"URxvt.keysym.S-Return:     \033[13;2u
"URxvt.keysym.C-Return:     \033[13;5u
"-------------
"
"- Alacritty, under key_bindings, add following to your ~/.config/alacritty/alacritty.yml:
"-------------
"- { key: Return,   mods: Shift,   chars: "\x1b[13;2u" }
"- { key: Return,   mods: Control, chars: "\x1b[13;5u" }
"-------------
nnoremap <S-CR> o<Esc>k
nnoremap <M-CR> O<Esc>j
" nnoremap <Space> o<Esc>k
" nnoremap <C-Space> O<Esc>j
" }}}

" ===== Abbreviations ===== {{{
iabbrev @@ xvitcoder@gmail.com
" }}}

" ===== Java ===== {{{
let java_highlight_functions = 1
let java_highlight_all = 1

nnoremap <silent><leader>m :call fzf#run({
            \ 'source': GetMakefileTargets(),
            \ 'sink': '15Term make',
            \ 'down': '30%',
            \ })<CR>

" Make
nnoremap <leader>mra :TTerm make all<CR>
nnoremap <leader>mrr :TTerm make run<CR>
nnoremap <leader>mrd :TTerm make debug<CR>
nnoremap <leader>mrb :15Term make build<CR>
nnoremap <leader>mrt :15Term make test<CR>
nnoremap <leader>mrc :15Term make clean<CR>

" Make Docker Build
nnoremap <leader>mdbs :15Term make docker-build-snapshot<CR>
nnoremap <leader>mdbl :15Term make docker-build-latest<CR>
nnoremap <leader>mdbr :15Term make docker-build-release<CR>

" Make Docker Push
nnoremap <leader>mdps :15Term make docker-push-snapshot<CR>
nnoremap <leader>mdpl :15Term make docker-push-latest<CR>
nnoremap <leader>mdpr :15Term make docker-push-release<CR>

au FileType java setlocal omnifunc=javacomplete#Complete
au FileType java inoremap <buffer> <S-CR> <Esc>A;<CR>
au FileType java nnoremap <buffer> <S-CR> A;<CR>
au FileType java nnoremap <buffer> <localleader>o :OR<CR>
au FileType java nnoremap <buffer> <localleader>c :CocCommand java.workspace.compile<CR>
au FileType java nnoremap <buffer> <localleader>0 :CocCommand java.clean.workspace<CR>

" Execute current java file
au FileType java nnoremap <buffer> <leader>rr :exec '15Term java ' . expand("%:t")<CR>
" }}}

" ===== JSON ===== {{{
let g:vim_json_syntax_conceal = 0
vnoremap <leader>js= :!python -m json.tool<CR>
au FileType json nnoremap <buffer> <leader>= :exec "%!python -m json.tool"<CR>
" }}}

" ===== XML ===== {{{
vnoremap <leader>xml= :!xmllint --format -<CR>
au FileType xml nnoremap <buffer> <leader>= :exec "%!python -c 'import sys;import xml.dom.minidom;s=sys.stdin.read();print xml.dom.minidom.parseString(s).toprettyxml()'"<CR>
" }}}

" ===== YAML ===== {{{
au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
" }}}

" ===== VimGo ===== {{{
let g:go_bin_path = "/bin"
autocmd FileType go nmap <leader>rb  <Plug>(go-build)
autocmd FileType go nmap <leader>rr  <Plug>(go-run)
autocmd FileType go nmap <leader>rt  <Plug>(go-test)

" Autoimport the libs at save
let g:go_fmt_command = "goimports"

" Camel Case Tags
let g:go_addtags_transform = "camelcase"

" Linter on save
let g:go_metalinter_autosave = 1

let g:go_term_mode = "split"
let g:go_term_height = 15



" Enable highlighting
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
" }}}

" ===== Rust ===== {{{
let g:rustfmt_autosave = 1
" }}}

" ===== Text ===== {{{
" Convert cammelCase to underscore
" TODO: Not finished, need to make the command accept parameter % or .
command! CamelCaseToUnderscore :s/\(\l\)\(\u\)/\1\_\l\2/gc
" }}}

" ===== Terminal ===== {{{
nnoremap <leader>tt :TTerm<space>
nnoremap <leader>tv :VTerm<space>
nnoremap <leader>ts :Term<space>
" }}}

" ===== Kubernetes ===== {{{
au FileType yaml nnoremap <buffer> <leader>rr :exec '15Term kubectl apply -f ' . expand("%:p")<CR>
au FileType yaml nnoremap <buffer> <leader>rd :exec '15Term kubectl delete -f ' . expand("%:p")<CR>
" }}}


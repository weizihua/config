syntax enable


" colorscheme wal
colorscheme gruvbox

" Customized colors
" https://github.com/dylanaraps/wal.vim/blob/master/colors/wal.vim
" hi Pmenu ctermbg=2 ctermfg=7
" hi PmenuSel ctermbg=3 ctermfg=0
" hi PmenuSbar ctermbg=0 ctermfg=1

" hi! Normal ctermbg=NONE guibg=NONE
" hi! NonText ctermbg=NONE guibg=NONE
" hi! CursorLine cterm=NONE ctermbg=NONE

" hi Normal ctermbg=None
" hi cursorline cterm=none term=none
" autocmd WinEnter * setlocal cursorline
" autocmd WinLeave * setlocal nocursorline
" highlight CursorLine guibg=#303000 ctermbg=136
" highlight CursorLine guibg=#303000 ctermbg=232 ctermfg=231
" hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white guibg=darkred guifg=white


" Settings
set nowrap
set hidden
set number
set relativenumber
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set autowrite
set nocursorline
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
set updatetime=300
set shortmess+=c
set signcolumn=yes

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


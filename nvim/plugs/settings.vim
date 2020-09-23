syntax enable

" hi Normal ctermfg=252 ctermbg=234
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! CursorLine cterm=NONE ctermbg=NONE
colorscheme wal
" colorscheme gruvbox


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


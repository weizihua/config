" Automatically install vimplug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    au VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" Filetypes
Plug 'ekalinin/Dockerfile.vim'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'
Plug 'vimwiki/vimwiki'
Plug 'mrk21/yaml-vim'
Plug 'cespare/vim-toml'
Plug 'tpope/vim-dotenv'
Plug 'jtratner/vim-flavored-markdown'
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'neomutt/neomutt.vim'
Plug 'lifepillar/pgsql.vim'
Plug 'uarun/vim-protobuf'
Plug 'aklt/plantuml-syntax'

" Color scheme
Plug 'morhetz/gruvbox'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'luochen1990/rainbow'

" UI
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'majutsushi/tagbar'
Plug 'gcmt/taboo.vim'
Plug 'ryanoasis/vim-devicons'

" Editor
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'easymotion/vim-easymotion'
Plug 'xolox/vim-misc'
Plug 'junegunn/vim-easy-align'
Plug 'haya14busa/incsearch.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-unimpaired'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'SirVer/ultisnips'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tommcdo/vim-exchange'
Plug 'ap/vim-css-color'
Plug 'vim-scripts/XML-Folding'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'szw/vim-maximizer'
Plug 'tools-life/taskwiki'

" Additional functionality
Plug 'airblade/vim-rooter'
Plug 'pbrisbin/vim-mkdir'
Plug 'schickling/vim-bufonly'
Plug 'tpope/vim-dispatch'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'neomake/neomake'
Plug 'machakann/vim-swap'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'diepm/vim-rest-console'
" Plug 'vimlab/split-term.vim'
Plug 'sjl/gundo.vim'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vifm/vifm.vim'
Plug 'mbbill/undotree'
Plug 'dhruvasagar/vim-open-url'
Plug 'tyru/open-browser.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'

" TMUX support
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'melonmanchan/vim-tmux-resizer'
Plug 'christoomey/vim-tmux-navigator'

" COC and vimscript completion for coc
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'dense-analysis/ale'

" Drawing
Plug 'vim-scripts/DrawIt'
Plug 'gyim/vim-boxdraw'

" Fern
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'

" DB
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'

" Debugger
" Plug 'puremourning/vimspector'


Plug 'voldikss/vim-floaterm'

" --- NOT TESTED ---
" Plug 'apalmer1377/factorus'
" --- NOT TESTED ---
call plug#end()


" Mappings
nnoremap <localleader>±i :PlugInstall<CR>
nnoremap <localleader>±c :PlugClean<CR>
nnoremap <localleader>±u :PlugUpdate<CR>
nnoremap <localleader>±U :PlugUpgrade<CR>
nnoremap <localleader>±s :PlugStatus<CR>

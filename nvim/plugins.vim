" Automatically install vimplug
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    au VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-surround'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'easymotion/vim-easymotion'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'SirVer/ultisnips'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'vimwiki/vimwiki'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'haya14busa/incsearch.vim'
Plug 'airblade/vim-rooter'
Plug 'pbrisbin/vim-mkdir'
Plug 'dhruvasagar/vim-table-mode'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'melonmanchan/vim-tmux-resizer'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'
Plug 'schickling/vim-bufonly'
Plug 'neomake/neomake'
Plug 'jtratner/vim-flavored-markdown'
Plug 'ekalinin/Dockerfile.vim'
Plug 'machakann/vim-swap'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-unimpaired'
Plug 'mrk21/yaml-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'gcmt/taboo.vim'
Plug 'cespare/vim-toml'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'idanarye/vim-vebugger'
Plug 'tpope/vim-dotenv'
Plug 'diepm/vim-rest-console'
Plug 'vimlab/split-term.vim'
Plug 'sjl/gundo.vim'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-dispatch'
Plug 'scrooloose/nerdcommenter'
Plug 'xvitcoder/dbext.vim'
Plug 'luochen1990/rainbow'
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'vim-scripts/DrawIt'
Plug 'gyim/vim-boxdraw'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'vifm/vifm.vim'
Plug 'dhruvasagar/vim-open-url'
Plug 'neomutt/neomutt.vim'
call plug#end()


" Mappings
nnoremap <localleader>±i :PlugInstall<CR>
nnoremap <localleader>±c :PlugClean<CR>
nnoremap <localleader>±u :PlugUpdate<CR>
nnoremap <localleader>±U :PlugUpgrade<CR>
nnoremap <localleader>±s :PlugStatus<CR>


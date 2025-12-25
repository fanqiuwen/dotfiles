"
" ~/.vimrc
"

" plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'lifepillar/vim-solarized8'
Plugin 'mhinz/vim-signify'
Plugin 'ledger/vim-ledger'
Plugin 'tpope/vim-sleuth'
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

" - airline
set noshowmode
set laststatus=2
set ttimeoutlen=10
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail_improved'
let g:airline#extensions#tabline#buffer_idx_mode=1
let g:airline#extensions#whitespace#mixed_indent_algo=2
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" - nerdtree
set wildignore=*.a,*.dep,*.o,*.pyc,*.so,*.swp
let NERDTreeRespectWildIgnore=1

" appearance
set termguicolors
set background=dark
colorscheme solarized8
set nowrap
set number
set showcmd
set title
syntax enable
if has("gui_running")
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guifont=Inconsolata\ for\ Powerline\ 14
endif

" behavior
set backspace=indent,eol,start
set encoding=utf-8
set fileencodings=utf-8,cp936,gb2312,latin-1
set mouse=a
set nobackup
set nowritebackup
set lazyredraw
set ignorecase
set smartcase

" coding style
filetype plugin indent on
set autoindent
set colorcolumn=81
set textwidth=80

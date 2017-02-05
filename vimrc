"
" ~/.vimrc
"

" plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'ledger/vim-ledger'
call vundle#end()

" - solarized
set background=dark
colorscheme solarized
call togglebg#map("<F6>")

" - airline
set noshowmode
set laststatus=2
set ttimeoutlen=50
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 2
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
let NERDTreeIgnore=['\.pyc$','\.dep$','\.o$']

" - latex-suite
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_ViewRule_pdf='zathura &'
let g:Tex_DefaultTargetFormat='pdf'

" - YouCompleteMe
set completeopt=menu,preview
let g:ycm_error_symbol='>>'
let g:ycm_warning_symbol='>'
let g:ycm_add_preview_to_completeopt=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_confirm_extra_conf=0
let g:EclimCompletionMethod='omnifunc'

" appearance
set nu
set title
set showcmd
syntax enable
set lazyredraw
if has("gui_running")
    set go-=m
    set go-=r
    set go-=L
    set go-=T
    set guifont=Inconsolata\ for\ Powerline\ 14
endif

" behavior
set nobackup
set nowritebackup
set encoding=utf-8
set fileencodings=utf-8,cp936,gb2312,latin-1
set ignorecase
set smartcase
set nowrap
set backspace=indent,eol,start
set mouse=a
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o,*.a,*.dep

" coding style
set cc=80
set tw=79
set autoindent
filetype plugin indent on

" filetype-specific
autocmd filetype python nmap <f4> :w \| :!python %<cr>
autocmd filetype python imap <f4> <esc><f4>
autocmd filetype c setlocal tw=72
autocmd filetype tex nmap <f4> :w<cr><Leader>ll
autocmd filetype tex imap <f4> <esc><f4>
autocmd filetype tex setlocal wrap
autocmd filetype tex setlocal tw=0
autocmd filetype tex nmap j gj
autocmd filetype tex nmap k gk

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
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'Valloric/YouCompleteMe'
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

" - bufferline
let g:bufferline_echo=0

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
    set go-=T
    set guifont=Inconsolata\ 14
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

" coding style
set cc=80
set tw=79
set autoindent
filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4

" filetype-specific
autocmd filetype python nmap <f8> :w \| :!python2 %<cr>
autocmd filetype python imap <f8> <esc><f8>
autocmd filetype c nmap <f8> :w \| :!gcc -Wall -Wextra -Werror -std=c99 -pedantic -g % && ./a.out<cr>
autocmd filetype c imap <f8> <esc><f8>
autocmd filetype tex nmap <f8> :w<cr><Leader>ll
autocmd filetype tex imap <f8> <esc><f8>
autocmd filetype tex setlocal wrap
autocmd filetype tex setlocal tw=0
autocmd filetype tex nmap j gj
autocmd filetype tex nmap k gk

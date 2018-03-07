set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin('~/.vim/bundle/vundle/')
filetype plugin indent on


Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on 

syntax on

set encoding=utf-8
set laststatus=2
""let g:airline_powerline_fonts=1
""let symbols={'maxlinenr': "\u33d1", 'linenr': "\u2630"}
""let &stl='%f %{g:symbols.linenr}%2l/%L%{g:symbols.maxlinenr}'

set t_Co=256
set bg=dark
set nu
set cursorline
""set clipboard=unnmaed
inoremap( ()<Esc>i
inoremap[ []<Esc>i
inoremap" ""<Esc>i
inoremap' ''<Esc>i
inoremap{<CR> {<CR>}<Esc>ko
filetype indent on
colorscheme torte

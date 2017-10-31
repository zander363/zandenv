set nocompatible
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/Vundle.vim')
filetype plugin indent on

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()
filetype plugin indent on 

syntax on

""set encoding=utf-8
set laststatus=2
""let g:airline_powerline_fonts=1
""set guifont =Knack\ NF:h10
""let symbols={'maxlinenr': "\u33d1", 'linenr': "\u2630"}
""let &stl='%f %{g:symbols.linenr}%2l/%L%{g:symbols.maxlinenr}'

set t_Co=256
set bg=dark
set nu
set cursorline
inoremap( ()<Esc>i
inoremap[ []<Esc>i
inoremap" ""<Esc>i
inoremap' ''<Esc>i
inoremap{<CR> {<CR>}<Esc>ko
filetype indent on
colorscheme torte

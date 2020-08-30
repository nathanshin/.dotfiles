" general
set clipboard=unnamed
set nocompatible              " be iMproved, required
syntax on
filetype off                  " required
filetype plugin indent on    " required
"
" spacing
set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

" Plug-in Management
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'sheerun/vim-polyglot'
call plug#end()

" Plugin configs
let g:NERDTreeQuitOnOpen = 1

" leader commands
nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <Leader>p :CtrlP<Enter>
nnoremap <Leader>n :b#<Enter>
nnoremap <Leader>o :NERDTreeToggle<Enter>

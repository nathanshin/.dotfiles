" general
set clipboard=unnamed
set nocompatible              " be iMproved, required
set number relativenumber
syntax on
filetype off                  " required

" vim line number color
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" Vundle.vim set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-obsession'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" leader commands
nnoremap <SPACE> <Nop>
let mapleader=" "
nnoremap <Leader>o :NERDTreeToggle<Enter>
nnoremap <Leader>n :b#<Enter>
nnoremap <Leader>p :CtrlP<Enter>
nnoremap <Leader>d :YcmCompleter GoTo<Enter>
nnoremap <Leader>j <C-o>
nnoremap <Leader>k <C-i>


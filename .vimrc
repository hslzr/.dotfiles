" Global configuration
set nocompatible
set number	
set nowrap
set showbreak=+++
set textwidth=80
set showmatch	
syntax on
 
set hlsearch
set smartcase
set ignorecase
set incsearch
 
set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set softtabstop=2
set ruler	
set undolevels=1000
set backspace=indent,eol,start
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

filetype off


" Vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin list
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'slim-template/vim-slim.git'
Plugin 'tpope/vim-rails'

call vundle#end()
filetype plugin indent on

set background=dark
colorscheme solarized

" Golang
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

" Indent Guides
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=234
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 2
let g:indent_guides_start_level = 2

" Global <Leader>
let mapleader = ","


autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd Filetype ruby set softtabstop=2
autocmd Filetype ruby set sw=2
autocmd Filetype ruby set ts=2
autocmd Filetype ruby set colorcolumn=80

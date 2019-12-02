" Global configuration
set nocompatible
set number	
set nowrap
set showbreak=+++
set textwidth=80
set showmatch	
set encoding=utf-8
set mouse=nicr
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
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'tpope/vim-endwise'
Plugin 'godlygeek/tabular'
Plugin 'itchyny/lightline.vim'
Plugin 'Townk/vim-autoclose'

" Vue stuff
Plugin 'posva/vim-vue'

" React stuff...
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'kristijanhusak/vim-js-file-import'
Plugin 'prettier/vim-prettier', {
  \'do': 'yarn install',
  \'for': ['javascript', 'typescript', 'css'] }


call vundle#end()
filetype plugin indent on

set background=dark
colorscheme solarized

" Golang
let g:go_null_module_warning = 0
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g_go_auto_type_info = 1

" Indent Guides
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=239
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" NERDTree
let g:NERDTreeNodeDelimiter = "\u00a0"

" UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"

" Light line settings
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'right': [ [ 'lineinfo' ],
  \              [ 'percent' ],
  \              [ 'fileformat' ] ]
  \ },
  \ }

" Global <Leader>
let mapleader = ","

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd Filetype ruby set softtabstop=2
autocmd Filetype ruby set sw=2
autocmd Filetype ruby set ts=2
autocmd Filetype ruby set colorcolumn=80

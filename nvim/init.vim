set nocompatible
set number
set nowrap
set showbreak=+++
set textwidth=80
set showmatch
set encoding=utf-8
set mouse=nicr
set clipboard=unnamed
syntax enable

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

" Display whitespace characters as visible characters
set list
set listchars=tab:→\ ,trail:⋅
set lcs+=space:·

filetype off

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-fugitive'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.x' }
Plug 'nvim-lualine/lualine.nvim'
Plug 'tpope/vim-dispatch'
Plug 'pangloss/vim-javascript'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mracos/mermaid.vim'

call plug#end()

filetype plugin indent on

" Dracula theming
let g:dracula_colorterm = 0
let g:dracula_italic = 0

colorscheme dracula

" NERDTree
let g:NERDTreeNodeDelimiter = "\u00a0"

" Light line settings
set laststatus=2
set noshowmode
highlight SignColumn ctermbg=NONE guibg=NONE

let mapleader = ","

autocmd Filetype ruby set softtabstop=2
autocmd Filetype ruby set sw=2
autocmd Filetype ruby set ts=2
autocmd Filetype ruby set colorcolumn=90

" Telescope config
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" Vim rails config
let g:rails_projections = {
      \ "app/services/*.rb": {
      \  "command": "service",
      \  "test": "spec/services/%S_spec.rb",
      \  "template": "class %S\nend",
      \  },
      \ }

" Lualine config
lua << END
  require('lualine').setup {
    options = {
      theme = 'dracula',
      section_separators = '',
      component_separators = '',
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'branch', 'diff' },
      lualine_c = { 'filename' },
      lualine_x = { 'encoding', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location'  },
    },
    inactive_sections = {
      lualine_a = {  },
      lualine_b = {  },
      lualine_c = { 'filename' },
      lualine_x = { 'location' },
      lualine_y = {  },
      lualine_z = {   }
    },
    tabline = {},
    extensions = {}
  }
END

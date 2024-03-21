vim9script

# Vim Base Settings. 
# set no compatible with vi.
set nocompatible

# line number setting.
set number
set relativenumber

# no wrap line
# set nowrap

# cursor settings.
set cursorline
# set cursorcolumn
# set guicursor

# smooth scroll
set smoothscroll

# scroll line count
set scroll=4

# syntax on.
filetype plugin indent on
syntax on

# search settings.
set hlsearch
set incsearch

# add tab space
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

if exists('+termguicolors')
    set termguicolors
else
    echo "This version do not support termguicolors!"
endif

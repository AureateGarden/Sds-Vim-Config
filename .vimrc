" Vim Settings.
" set no compatible with vi.
set nocompatible

" set leader key to <Space>
let mapleader = "\ "

" fast refresh .vimrc
nnoremap <Leader>R :source ~/.vimrc<CR>

" [Tips]: You can use <number> <C-d>|<C-u> to resize the scroll length.
" change half page scroll from <C-d> & <C-u> to J & K
noremap J <C-d>
noremap K <C-u>
" remap J & K to Y & U
noremap Y J
noremap P K
" change single line scroll from <C-e> & <C-y> to <C-j> & <C-k>
noremap <C-j> <C-e>
noremap <C-k> <C-y>
" change single line head and end without space navigation from ^ & $ to H & Leader
noremap H ^
noremap L g_
" change single line head and end with space navigation from 0 & $ to <C-h> & <C-l>
noremap <C-h> 0
noremap <C-l> $

" delete text without register.
nnoremap dd "_dd
nnoremap x "_x
nnoremap X "_X
nnoremap s "_s
nnoremap S "_S
nnoremap c "_c

" resize window.
nnoremap <C-Left> :vertical resize +3<CR>
nnoremap <C-Right> :vertical resize -3<CR>

" line number setting.
set nu
set relativenumber

" syntax on.
syntax on

" search settings.
set hlsearch
set incsearch
nnoremap <Leader>/ :nohlsearch<CR>

" yank line without <CR>
nmap yy HvLy

" add tab space
set ts=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Plugin Settings.
call plug#begin()
Plug 'frazrepo/vim-rainbow'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-airline/vim-airline'
call plug#end()

" gruvbox Settings
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = '1'
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" NERDtree settings.
" autocmd VimEnter * NERDTree

" fast toggle NERDtree
nnoremap <C-d> :NERDTreeToggle<CR>

" easymotion Settings.

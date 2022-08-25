" Vim Settings.

" fast refresh .vimrc
nnoremap <Leader>R :source ~/.ideavimrc<CR>

" [Tips]: You can use <number> <C-d>|<C-u> to resize the scroll length.
" change half page scroll from <C-d> & <C-u> to J & K
noremap J <C-d>
noremap K <C-u>
" remap J & K to Y & U
noremap Y J
noremap U K
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

" line number setting.
set nu
set relativenumber

" search settings.
set hlsearch
noremap <C-/> :nohlsearch<CR>

" syntax on.
syntax on

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
call plug#end()

" gruvbox Settings
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = '1'
autocmd vimenter * ++nested colorscheme gruvbox
autocmd VimEnter * NERDTree
set background=dark

" easymotion Settings.

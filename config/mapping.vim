vim9script

# set leader key to <Space>
g:mapleader = "\<Space>"

# fast refresh .vimrc
nnoremap <Leader>R :source ~/.vim/vimrc<CR>

# [Tips]: You can use <number> <C-d>|<C-u> to resize the scroll length.
# change half page scroll from <C-d> & <C-u> to J & K
noremap J <C-d>
noremap K <C-u>
# remap J & K to Y & U
noremap Y J
noremap P K
# change single line scroll from <C-e> & <C-y> to <C-j> & <C-k>
noremap <C-j> <C-e>
noremap <C-k> <C-y>
# change single line head and end without space navigation from ^ & $ to H & Leader
noremap H ^
noremap L g_
# change single line head and end with space navigation from 0 & $ to <C-h> & <C-l>
noremap <C-h> 0
noremap <C-l> $

# delete text without register
nnoremap d "ed
nnoremap D "eD
nnoremap x "ex
nnoremap X "eX
nnoremap s "es
nnoremap S "eS
nnoremap c "ec
nnoremap C "eC

vnoremap d "vd
vnoremap D "vD
vnoremap x "vx
vnoremap X "vX
vnoremap s "vs
vnoremap S "vS
vnoremap c "vc
vnoremap C "vC

noremap y "vy

noremap p "vp

# hide search
nnoremap <Leader>/ :nohlsearch<CR>

# yank line settings.
noremap <C-y> "+y

# paste line settings.
noremap <C-p> "+p

# visual whole line without space
nnoremap val ^vg_

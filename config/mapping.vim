" set leader key to <Space>
let mapleader = "\ "

" fast refresh .vimrc
nnoremap <Leader>R :source ~/.vim/vimrc<CR>

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

" delete text without register
nnoremap dd "_dd
nnoremap x "_x
nnoremap X "_X
nnoremap s "_s
nnoremap S "_S
nnoremap c "_c

" resize window
nnoremap <C-Left> :vertical resize +3<CR>
nnoremap <C-Right> :vertical resize -3<CR>

" hide search
nnoremap <Leader>/ :nohlsearch<CR>

" yank line without <CR>
nmap yy HvLy
noremap <C-y> "+y

" paste line settings.
noremap <C-p> "+p


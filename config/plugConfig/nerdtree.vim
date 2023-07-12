vim9script

# NERDtree settings.
# autocmd VimEnter * NERDTree

g:NERDTreeIgnore = [
    '\~$',
    '\.meta$',
]

# fast toggle NERDtree
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <leader>n :NERDTreeFocus<CR>

nnoremap <C-n> :NERDTree<CR>

nnoremap <C-f> :NERDTreeFind<CR>

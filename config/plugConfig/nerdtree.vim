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

# other key mappings or settings may in:
# ~/.vim/nerdtree_plugin/ --unix
# ~/vimfiles/nerdtree_plugin --windows

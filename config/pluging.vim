vim9script

import "~/.vim/config/init.vim" as Initer

var plugConfigPathRoot = Initer.GetConfigRootPath() .. 'plugConfig/'
var vimScriptExt = '.vim'

var plugDic = {
    'frazrepo/vim-rainbow': {enable: true, config: 'rainbow'},
    'morhetz/gruvbox': {enable: true, config: 'gruvbox'},
    'preservim/nerdtree': {enable: true, config: 'nerdtree'},
    'easymotion/vim-easymotion': {enable: true, config: 'easymotion'},
    'ycm-core/YouCompleteMe': {enable: false, config: 'ycm'},
    'vim-airline/vim-airline': {enable: true, config: 'airline'},
}

call plug#begin()
for [key, value] in items(plugDic)
    if value.enable == false
        continue
    endif
    plug#(key)
endfor
call plug#end()

for [key, value] in items(plugDic)
    var fileName = value.config .. vimScriptExt
    var fileObj = findfile(plugConfigPathRoot .. fileName, Initer.GetConfigRootPath())
    if fileObj == null
        continue
    endif
    execute 'source' plugConfigPathRoot .. fileName
endfor

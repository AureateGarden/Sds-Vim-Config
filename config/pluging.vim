vim9script

import "~/.vim/config/init.vim" as Initer
import "~/.vim/config/plugConfig.vim"

var plugConfigPathRoot = Initer.GetConfigRootPath() .. 'plugConfig/'
var vimScriptExt = '.vim'

call plug#begin()
for key in sort(keys(plugConfig.Data))
    var value = plugConfig.Data[key]
    if has_key(value, 'enable') && value.enable == false
        continue
    endif
    if has_key(value, 'args')
        plug#(key, value.args)
    else
        plug#(key)
    endif
endfor
call plug#end()

var enabledTheme = false

for [key, value] in items(plugConfig.Data)
    if has_key(value, 'config')
        var fileName = value.config .. vimScriptExt
        var fileObj = findfile(plugConfigPathRoot .. fileName, Initer.GetConfigRootPath())
        if fileObj == null || (has_key(value, 'enable') && value.enable == false)
            continue
        endif
        if has_key(value, 'type') && value.type == plugConfig.PlugType.Theme && !enabledTheme
            enabledTheme = true
            execute 'source' plugConfigPathRoot .. fileName
        else
            execute 'source' plugConfigPathRoot .. fileName
        endif
    endif
endfor

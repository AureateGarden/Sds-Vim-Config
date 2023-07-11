vim9script

import "./init.vim" as Initer
import "./plugConfig.vim"

var plugConfigPathRoot = Initer.GetConfigRootPath() .. 'plugConfig/'
var vimScriptExt = '.vim'

def ExecutePlugConfig(configFileName: string, showLog: bool = false)
    var filePath = plugConfigPathRoot .. configFileName
    try
        execute 'source' filePath
        if showLog
            echo 'Load plugin config: ' .. configFileName .. ' - Successful'
        endif
    catch /.*/
        echo 'Load plugin config: ' .. configFileName .. ' - Failed'
    endtry
enddef

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
        if has_key(value, 'type') && value.type == plugConfig.PlugType.Theme
            if !enabledTheme
                enabledTheme = true
                ExecutePlugConfig(fileName)
            endif
        else
            ExecutePlugConfig(fileName)
        endif
    endif
endfor

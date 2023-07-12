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

def GetPlugName(str: string): string
    return matchstr(str, '[\/].\+$')[1 : -1]
enddef

def HasPlug(plugName: string): bool
    if !exists('g:plugs')
        return false
    endif
    return has_key(g:plugs, plugName)
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
    var plugName = GetPlugName(key)
    if !HasPlug(plugName)
        continue
    endif

    if !has_key(value, 'config')
        continue
    endif

    var fileName = value.config .. vimScriptExt
    if findfile(plugConfigPathRoot .. fileName, Initer.GetConfigRootPath()) == null
        continue
    endif

    if has_key(value, 'enable') && !value.enable
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
endfor

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
for data in plugConfig.Data
    if !has_key(data, 'repo')
        continue
    endif

    if has_key(data, 'enable') && !data.enable
        continue
    endif

    var plug = data.repo
    if has_key(data, 'localPaths')
        for localPath in data.localPaths
            if finddir(localPath) != null
                plug = localPath
            endif
        endfor
    endif
    if has_key(data, 'args')
        plug#(plug, data.args)
    else
        plug#(plug)
    endif
endfor
call plug#end()

var enabledTheme = false
for data in plugConfig.Data
    if !has_key(data, 'repo')
        continue
    endif

    if !HasPlug(GetPlugName(data.repo))
        continue
    endif

    if !has_key(data, 'config')
        continue
    endif

    var fileName = data.config .. vimScriptExt
    if findfile(plugConfigPathRoot .. fileName, Initer.GetConfigRootPath()) == null
        continue
    endif

    if has_key(data, 'enable') && !data.enable
        continue
    endif

    if has_key(data, 'type') && data.type == plugConfig.PlugType.Theme
        if !enabledTheme
            enabledTheme = true
            ExecutePlugConfig(fileName)
        endif
    else
        ExecutePlugConfig(fileName)
    endif
endfor

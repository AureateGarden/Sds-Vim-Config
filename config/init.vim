vim9script

var configRootPath = "~/.vim/config/"

export def GetConfigRootPath(): string
    return configRootPath
enddef

var configFilePath = '$HOME/.vim/config/'
var vimScriptExt = '.vim'

var configFiles = [
    'configUtility',
    'base',
    'mapping',
    'plugConfig',
    'pluging',
]

for config in configFiles
    execute 'source' configFilePath .. config .. vimScriptExt 
endfor

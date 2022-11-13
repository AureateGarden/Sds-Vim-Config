vim9script

var configRootPath = "~/.vim/config/"

export def GetConfigRootPath(): string
    return configRootPath
enddef

execute 'source' GetConfigRootPath() .. 'configUtility.vim'

var configFilePath = '$HOME/.vim/config/'
var vimScriptExt = '.vim'

var configFiles = [
    'base',
    'mapping',
    'pluging',
]

for config in configFiles
    execute 'source' configFilePath .. config .. vimScriptExt 
endfor

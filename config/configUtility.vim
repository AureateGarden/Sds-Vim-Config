vim9script

var rcFileNameA = ".vimrc"
var rcFileNameB = "vimrc"

export def RefreshRC()
    var pathA = findfile(rcFileNameA, $HOME)
    if pathA != ""
        execute "source" pathA
        return
    endif

    var pathB = findfile(rcFileNameB, $HOME .. "/.vim")
    if pathB != ""
        execute "source" pathB
        return
    endif

    echo "Can't find user vim config file."
enddef

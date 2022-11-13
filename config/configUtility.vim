vim9script

var rcPathA = "$HOME/.vimrc"
var rcPathB = "$HOME/.vim/vimrc"

def RefreshRC()
    if findfile(rcPathA, "$HOME")
        execute 'source' rcPathA
    elseif findfile(rcPathB, "$HOME")
        execute 'source' rcPathB
    else
        echo "Can't find user vim config file."
    endif
enddef

vim9script

export var PlugType = {
    'Theme': 1,
    'Other': 2,
}

export var Data = {
# Themes Start
    'morhetz/gruvbox': {
        type: PlugType.Theme,
        enable: true,
        config: 'gruvbox'
    },
    'sonph/onehalf': {
        type: PlugType.Theme,
        enable: false,
        config: 'onehalf',
        args: {
            'rtp': 'vim'
        }
    },
# Themes End

    'preservim/nerdtree': {
        config: 'nerdtree'
    },
    'ctrlpvim/ctrlp.vim': {
        config: 'ctrlp'
    },
    'frazrepo/vim-rainbow': {
        config: 'rainbow'
    },
    'tpope/vim-commentary': {
        config: 'commentary'
    },
    'vim-airline/vim-airline': {
        config: 'airline'
    },
    'easymotion/vim-easymotion': {
        config: 'easymotion'
    },
    'neoclide/coc.nvim': {
        config: 'coc',
        args: {
            'branch': 'release'
        },
    },
    'tpope/vim-surround': {
        config: 'surround'
    },
    'dense-analysis/ale': {
        config: 'ale'
    },
}

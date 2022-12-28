vim9script

export var PlugType = {
    'Theme': 1,
    'Other': 2,
}

export var Data = {
# Themes Start
    'morhetz/gruvbox': {
        type: PlugType.Theme,
        enable: false,
        config: 'gruvbox'
    },
    'chriskempson/base16-vim': {
        type: PlugType.Theme,
        enable: true,
        config: 'base16-vim'
    },
    'gosukiwi/vim-atom-dark': {
        type: PlugType.Theme,
        enable: false,
        config: 'vim-atom-dark'
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
    'vim-airline/vim-airline-themes': {
        config: 'vim-airline-themes'
    },
    'easymotion/vim-easymotion': {
        config: 'easymotion'
    },
    'tpope/vim-surround': {
        config: 'surround'
    },
    'dense-analysis/ale': {
        config: 'ale'
    },
    'neoclide/coc.nvim': {
        config: 'coc',
        args: {
            'branch': 'release'
        },
    },
    'OmniSharp/Omnisharp-vim': {
        config: 'Omnisharp-vim',
    }
}

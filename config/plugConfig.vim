vim9script

export var PlugType = {
    Normal: 1,
    Theme: 2,
    Other: 3
}

export var Data = [
# Themes Start
    {
        repo: 'morhetz/gruvbox',
        type: PlugType.Theme,
        enable: true,
        config: 'gruvbox'
    },
    {
        repo: 'chriskempson/base16-vim',
        type: PlugType.Theme,
        enable: false,
        config: 'base16-vim'
    },
    {
        repo: 'gosukiwi/vim-atom-dark',
        type: PlugType.Theme,
        enable: false,
        config: 'vim-atom-dark'
    },
# Themes End
    {
        repo: 'preservim/nerdtree',
        config: 'nerdtree'
    },
    {
        repo: 'junegunn/fzf',
        localPaths: [
            '/usr/local/opt/fzf'
        ],
        args: {
            'do': ':call fzf#install()'
        },
        config: 'fzf',
    },
    {
        repo: 'junegunn/fzf.vim',
        config: 'fzf.vim',
    },
    {
        repo: 'frazrepo/vim-rainbow',
        config: 'rainbow'
    },
    {
        repo: 'tpope/vim-commentary',
        config: 'commentary'
    },
    {
        repo: 'vim-airline/vim-airline',
        config: 'airline'
    },
    {
        repo: 'vim-airline/vim-airline-themes',
        config: 'vim-airline-themes'
    },
    {
        repo: 'easymotion/vim-easymotion',
        config: 'easymotion'
    },
    {
        repo: 'tpope/vim-surround',
        config: 'surround'
    },
    {
        repo: 'dense-analysis/ale',
        config: 'ale'
    },
    {
        repo: 'mg979/vim-visual-multi',
        config: 'vim-visual-multi'
    },
    {
        repo: 'neoclide/coc.nvim',
        args: {
            'branch': 'release'
        },
        config: 'coc',
    },
    {
        repo: 'OmniSharp/Omnisharp-vim',
        config: 'Omnisharp-vim',
    }
]

export var Data2 = {
# Themes Start
    'morhetz/gruvbox': {
        type: PlugType.Theme,
        enable: true,
        config: 'gruvbox'
    },
    'chriskempson/base16-vim': {
        type: PlugType.Theme,
        enable: false,
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
    '/usr/local/opt/fzf': {
        config: 'fzf',
        args: {
        'do': ':call fzf#install()'
        }
    },
    'junegunn/fzf.vim': {
        config: 'fzf.vim',
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
    'mg979/vim-visual-multi': {
        config: 'vim-visual-multi'
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

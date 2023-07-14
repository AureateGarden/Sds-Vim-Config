vim9script

# Tell ALE to use OmniSharp for linting C# files, and no other linters.
g:ale_linters = {
    'cs': ['OmniSharp'] # omnisharp-vim: issue: Setup vim with Unity #394
}

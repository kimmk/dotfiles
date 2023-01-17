vim.g.clipboard = {
    name = 'xclip',
    cache_enabled = 1,
    copy = {
        ['+'] = {'xclip', '-selection', 'c'},
        ['*'] = {'xclip', '-selection', 'c'},
    },
    paste = {
        ['+'] = {'xclip', '-selection', 'clipboard', '-o'},
        ['*'] = {'xclip', '-selection', 'clipboard', '-o'},
    },
}


require('nvim-treesitter.configs').setup {
    ensure_installed = {
        'c',
        'lua',
        'vim',
        'vimdoc',
        'html',
        'css',
        'scss',
        'json',
        'tsx',
        'toml',
        'yaml',
        'graphql',
        'python',
    },

    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        disable = {}
    },
    indent = {
        enable = true
    },
    autotag = {
        enable = true
    }
}

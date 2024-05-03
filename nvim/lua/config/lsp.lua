require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        'lua_ls',
        'gopls',
        'pyright',
        'tsserver',
        'cssls',
        'html',
        'graphql',
    }
})

vim.api.nvim_create_autocmd('lspAttach', {
    desc = 'LSP actions',
    callback = function() 
        local bufmap = function(mode, lhs, rhs)
            local opts = { buffer = true }
            vim.keymap.set(mode, lhs, rhs, opts)
        end

        bufmap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
        bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition<cr>')
        bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration<cr>')
        bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
    end
})

local lspconfig = require('lspconfig')
local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
    'force',
    lsp_defaults.capabilities,
    require('cmp_nvim_lsp').default_capabilities()
)

lspconfig.lua_ls.setup({})
lspconfig.gopls.setup({})

vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }

local cmp = require('cmp')
local lspkind = require('lspkind')
local luasnip = require('luasnip')

cmp.setup({
   snippet = {
       expand = function(args)
           luasnip.lsp_expand(args.body)
       end,
   },
   sources = {
       { name = 'path' },
       { name = 'nvim_lsp', keyword_length = 1 },
       { name = 'buffer', keyword_length = 3 },
       { name = 'luasnip', keyword_length = 2 },
   },
   window = {
       --completion = cmp.config.window.bordered(),
       documentation = cmp.config.window.bordered()
   },
   formatting = {
       fields = { 'menu', 'abbr', 'kind' },
       format = function(entry, item)
           local menu_icon = {
               nvim_lsp = 'λ',
                luasnip = '⋗',
                buffer = 'Ω',
                path = '🖫',
           }

           item.menu = menu_icon[entry.source.name]
           return item
       end,
   },
   mapping = cmp.mapping.preset.insert({
       ['<C-b>'] = cmp.mapping.scroll_docs(-4),
       ['<C-f>'] = cmp.mapping.scroll_docs(4),
       ['<C-Space>'] = cmp.mapping.complete(),
       ['<C-e>'] = cmp.mapping.abort(),
       ['<CR>'] = cmp.mapping.confirm({
           select = true
       }),
   }),
})

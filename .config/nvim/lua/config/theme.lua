require('tokyonight').setup({
    style = 'night',
    transparent = false,
    terminal_colors = true
})

vim.opt.background = 'dark'
vim.cmd [[ colorscheme tokyonight ]] 

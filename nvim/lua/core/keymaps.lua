local builtin = require('telescope.builtin')

local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = "'"

map('i', 'jk', '<Esc>')

map('n', '<C-n>', ':NvimTreeToggle')

map('n', '<C-p>', ':tabn<CR>') -- Fix
map('n', '<C-i>', ':tabp<CR>') -- Fix

-- Telescope
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

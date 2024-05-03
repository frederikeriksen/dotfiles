return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
  
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use 'm4xshen/autoclose.nvim'

  use 'folke/tokyonight.nvim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'

  use 'onsails/lspkind-nvim'
  use 'L3MON4D3/LuaSnip'
  use 'windwp/nvim-ts-autotag'
  use 'lewis6991/gitsigns.nvim'
  use 'romgrk/barbar.nvim'
end)

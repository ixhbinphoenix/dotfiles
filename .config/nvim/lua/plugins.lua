-- Load this using require('plugins')

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'nvim-lua/plenary.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'jose-elias-alvarez/null-ls.nvim',
    'jayp0521/mason-null-ls.nvim',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  }
  use 'wuelnerdotexe/vim-astro'
  use 'kyazdani42/nvim-web-devicons'
  use {
    'catppuccin/nvim',
    as = 'catppuccin',
    config = function ()
      vim.g.catppuccin_flavour = "mocha"
      require('catppuccin').setup()
      vim.cmd("colorscheme catppuccin")
    end
  }
  use {
    'nanozuki/tabby.nvim',
    config = function ()
      require('tabby').setup({
        tabline = require("tabby.presets").active_tab_with_wins
      })
    end
  }
  use 'feline-nvim/feline.nvim'
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use {
    's1n7ax/nvim-terminal',
    config = function ()
      vim.o.hidden = true
      require('nvim-terminal').setup()
    end
  }
  use 'andweeb/presence.nvim'
  use {
    'rcarriga/nvim-notify',
    config = function ()
      vim.notify = require("notify")
    end
  }
end)

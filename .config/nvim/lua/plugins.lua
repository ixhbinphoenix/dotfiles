-- Load this using require('plugins')

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
	use 'sheerun/vim-polyglot'
	use { 'neoclide/coc.nvim', branch = 'release' }
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

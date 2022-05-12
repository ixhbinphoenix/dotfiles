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
	use 'feline-nvim/feline.nvim'
	use 'andweeb/presence.nvim'
end)

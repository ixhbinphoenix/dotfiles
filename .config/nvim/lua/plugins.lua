-- Load this using require('plugins')

return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'sheerun/vim-polyglot'
	use { 'neoclide/coc.nvim', branch = 'release' }
	use 'andweeb/presence.nvim'
end)

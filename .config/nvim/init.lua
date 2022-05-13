local home = os.getenv('HOME')

vim.opt.tgc = true
vim.opt.hidden = true
vim.opt.encoding = "utf-8"
vim.g.node_host_prog = '/usr/bin/neovim-node-host'
require('plugins')
vim.cmd("colorscheme nordfox")
require('feline').setup()
require('nvim-tree').setup()
vim.cmd("NvimTreeOpen")

vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\> <C-n>",	{ noremap = true })

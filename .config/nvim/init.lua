local home = os.getenv("HOME")

vim.opt.tgc = true
vim.opt.hidden = true
vim.opt.encoding = "utf-8"

require('plugins')
require('feline').setup()

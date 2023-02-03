local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.haxe = {
  install_info = {
    url = "https://github.com/vantreeseba/tree-sitter-haxe",
    files = {"src/parser.c"},
    branch = "main",
  },
  filetype = "haxe",
}
parser_config.nim = {
  install_info = {
    url = "https://github.com/aMOPel/tree-sitter-nim",
    files = {"src/parser.c"},
    branch = "main"
  },
  filetype = "nim"
}
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "vim", "help", "javascript", "typescript", "rust" },

  auto_install = true,

  highlight = {
    enable = true
  }
}

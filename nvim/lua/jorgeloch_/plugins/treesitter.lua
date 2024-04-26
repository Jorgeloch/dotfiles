return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      ensure_installed = { 
        "c", 
        "lua", 
        "vim",
        "vimdoc",
        "query",
        "sql",
        "go",
        "typescript",
        "javascript",
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },  
    })
  end,
}

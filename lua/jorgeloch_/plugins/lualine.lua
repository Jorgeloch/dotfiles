return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function ()
    local lualine = require("lualine")
    local theme = require("lualine.themes.nightfly")
    lualine.setup({
      options = {
        theme = theme
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          {
            "buffers",
            filetype_names = {
              TelescopePrompt = " Finder",
              packer = "Packages",
              NvimTree = " Explorer",
              toggleterm = "Terminal",
            },
            symbols = {
              modified = " ",
              alternate_file = "",
              directory = "",
            },
          },
        },
        lualine_c = { "" },
        lualine_x = { "diff", "branch" },
        lualine_y = { "location" },
        lualine_z = { "progress" },
      },
    })
  end,
}  

return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    local term = require("toggleterm")
    term.setup({
      open_mapping = [[<C-\>]],
      autochdir = true,
      persist_size = true,
      persist_mode = true,
      direction = 'float',
      close_on_exit = true,
    })
  end,
}

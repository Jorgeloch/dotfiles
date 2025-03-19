return {
  {
    "zbirenbaum/copilot.lua",
    config = function()
      local copilot = require("copilot")
      copilot.setup({
        suggestion = { enabled = true },
        panel = { enabled = true },
      })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = "copilot.lua",
    config = function()
      local copilot_cmp = require("copilot_cmp")
      copilot_cmp.setup()
    end,
  },
}

return {
  'nvim-telescope/telescope.nvim', tag = '0.1.6',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    {'nvim-telescope/telescope-fzf-native.nvim', build = 'make'},
    'nvim-tree/nvim-web-devicons',
  },
  config = function ()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["j"] = actions.move_selection_next,
            ["k"] = actions.move_selection_previous,
          },
        },
      },
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("harpoon")

    local keymap = vim.keymap
    keymap.set("n", "<leader>f", "<cmd>Telescope find_files<cr>")
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
    keymap.set("n", "<C-f>", "<cmd>Telescope git_files<cr>")
    
  end,
}

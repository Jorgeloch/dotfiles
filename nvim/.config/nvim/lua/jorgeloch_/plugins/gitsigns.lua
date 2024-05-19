return {
	"lewis6991/gitsigns.nvim",
	config = function()
		local gitsigns = require("gitsigns")
		local keymap = vim.keymap

		gitsigns.setup({
			signs = {
				add = { text = "┃" },
				change = { text = "┃" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
				untracked = { text = "┆" },
			},
		})

		keymap.set("n", "<leader>gs", "<cmd>Gitsigns toggle_signs<cr>")
		keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>")
		keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>")
		keymap.set("n", "<leader>gs", "<cmd>Gitsigns toggle_signs<cr>")
	end,
}

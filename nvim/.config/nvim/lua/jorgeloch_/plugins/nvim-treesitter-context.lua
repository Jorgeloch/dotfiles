return {
	"nvim-treesitter/nvim-treesitter-context",
	config = function()
		require("nvim-treesitter.configs").setup({
			enable = true,
			max_lines = 2,
			line_numbers = true,
		})
	end,
}

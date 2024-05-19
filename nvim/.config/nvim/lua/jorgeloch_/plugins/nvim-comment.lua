return {
	"terrortylor/nvim-comment",
	config = function()
		require("nvim_comment").setup({
			line_mapping = "<leader>/",
			operator_mapping = "<leader>/",
			marker_padding = true,
			comment_empty = false,
		})
	end,
}

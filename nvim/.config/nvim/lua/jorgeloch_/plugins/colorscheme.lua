return {
	"catppuccin/nvim",
	name = "catppuccin",
	opts = {
		flavour = "mocha", -- latte, frappe, macchiato, mocha
		priority = 1000,
		background = {
			light = "latte",
			dark = "mocha",
		},
		show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
		styles = {
			comments = { "italic" },
			conditionals = { "italic" },
			transparent_background = false, -- disables setting the background color.
		},
		default_integrations = true,
		integrations = {
			cmp = true,
			gitsigns = true,
			nvimtree = true,
			treesitter = true,
			notify = false,
			mini = {
				enabled = true,
				indentscope_color = "",
			},
		},
	},
	config = function()
		vim.cmd.colorscheme("catppuccin")
		vim.o.background = "dark"
	end,
}

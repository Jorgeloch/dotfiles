return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				graphql = { "prettier" },
				lua = { "stylua" },
				go = { "goimpors", "gofmt" },
			},
			format_on_save = function(bufnr)
				-- Disable autoformat on certain filetypes
				local ignore_filetypes = { "c", "cpp", "h" }
				if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
					return
				end
				return {
					lsp_fallback = true,
					async = false,
					timeout_ms = 5000,
				}
			end,
			vim.keymap.set({ "n", "v" }, "<leader>fmt", function()
				conform.format({
					lsp_fallback = true,
					async = false,
					timeout_ms = 5000,
				})
			end),
		})
	end,
}

return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")
		local mason = require("mason-lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local keymap = vim.keymap

		local opts = { noremap = true, silent = true }
		local on_attach = function(client, bufnr)
			opts.buffer = bufnr

			opts.desc = "Show LSP references"
			keymap.set("n", "gR", "<cmd> Telescope lsp_references<cr>", opts)

			opts.desc = "Go to declaration"
			keymap.set("n", "gD", vim.lsp.buf.declaration, opts)

			opts.desc = "Show LSP definitions"
			keymap.set("n", "gd", "<cmd> Telescope lsp_definitions<cr>", opts)

			opts.desc = "Show LSP implementations"
			keymap.set("n", "gi", "<cmd> Telescope lsp_implementations<cr>", opts)

			opts.desc = "Show LSP type definitions"
			keymap.set("n", "gt", "<cmd> Telescope lsp_type_definitions<cr>", opts)

			opts.desc = "Show avaliable code actions"
			keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

			opts.desc = "Smart rename"
			keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

			opts.desc = "Show buffer diagnostics"
			keymap.set("n", "<leader>bd", "<cmd>Telescope diagnostics bufnr=0<cr>", opts)

			opts.desc = "Go to next diagnostic"
			keymap.set("n", "<Tab>", vim.diagnostic.goto_previous, opts)

			opts.desc = "Restart LSP"
			keymap.set("n", "<leader>rs", "<cmd>:LspRestart<cr>", opts)

			opts.desc = "Show documentation for what is under the cursor"
			keymap.set("n", "K", vim.lsp.buf.hover, opts)
		end

		local capabilities = cmp_nvim_lsp.default_capabilities()
		local signs = { Error = " ", Warn = " ", Hint = "ﴞ ", Info = " " }

		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
		end

		mason.setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					on_attach = on_attach,
					capabilities = capabilities,
				})
			end,
		})
	end,
}

if vim.g.vscode then
	local keymap = vim.keymap
	local vscode = require("vscode")

	vim.opt.clipboard:append("unnamedplus")
	vim.g.mapleader = " "

	local buffer = {
		new = function()
			vscode.call("workbench.action.files.newUntitledFile")
		end,
		save = function()
			vscode.call("workbench.action.files.save")
		end,
		close = function()
			vscode.call("workbench.action.closeActiveEditor")
		end,
		previous = function()
			vscode.call("workbench.action.previousEditorInGroup")
		end,
		next = function()
			vscode.call("workbench.action.nextEditorInGroup")
		end,
		-- format = function() vscode.call "editor.action.formatDocument" end,
		-- showInExplorer = function() vscode.call "workbench.files.action.showActiveFileInExplorer" end,
	}

	local window = {
		splitVertically = function()
			vscode.call("workbench.action.splitEditorRight")
		end,
		splitHorizontally = function()
			vscode.call("workbench.action.splitDown")
		end,
		evenWidths = function()
			vscode.call("workbench.action.evenEditorWidths")
		end,
		closeCurrentSplit = function()
			vscode.call("workbench.action.closeUnmodifiedEditors")
		end,
	}

	local editor = {
		toggleCommentLine = function()
			vscode.call("editor.action.commentLine")
		end,
	}

	keymap.set("n", "J", "mzJ`z", { desc = "Join row" })
	keymap.set("v", "d", '"_d', { desc = "Delete selected area" })
	keymap.set("v", "p", '"_dP', { desc = "Paste" })
	keymap.set("n", "Q", "<nop>")

	-- Search
	keymap.set("n", "n", "nzzzv", { desc = "Center the bellow search occurrence" })
	keymap.set("n", "N", "Nzzzv", { desc = "Center the above search occurrence" })
	keymap.set("n", "<ESC>", "<cmd>nohl<CR>", { desc = "Clear search highlights" })

	-- Reamap redo
	keymap.set("n", "<C-r>", "<nop>")
	keymap.set("n", "U", "<cmd>redo<CR>", { desc = "redo" })

	-- Indentation
	keymap.set("v", "<", "<gv", { desc = "Indent left without leaving visual mode" })
	keymap.set("v", ">", ">gv", { desc = "Indent right without leaving visual mode" })

	-- delete single character without copying into register
	keymap.set("n", "x", '"_x')

	-- Editor
	keymap.set({ "n", "v" }, "<leader>/", editor.toggleCommentLine, { desc = "Toggle Comment Line" })

	-- Buffers
	keymap.set("n", "<leader>w", buffer.save, { desc = "Save buffer" })
	keymap.set("n", "<leader>n", buffer.new, { desc = "Open new buffer" })
	keymap.set("n", "<leader>c", buffer.close, { desc = "Close current buffer" })
	keymap.set("n", "H", buffer.previous, { desc = "Go to previous buffer" })
	keymap.set("n", "L", buffer.next, { desc = "Go to next buffer" })

	-- window management
	keymap.set("n", "<leader>sv", window.splitVertically, { desc = "Split window vertically" })
	keymap.set("n", "<leader>sh", window.splitHorizontally, { desc = "Split window horizontally" })
	keymap.set("n", "<leader>se", window.evenWidths, { desc = "Make splits equal widths" })
	keymap.set("n", "<leader>sx", window.closeCurrentSplit, { desc = "Close current split" })
	return
end

require("jorgeloch_.core")
require("jorgeloch_.lazy")

vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>t", "<cmd>TransparentToggle<cr>")

keymap.set("n", "<leader>c", "<cmd>bd<cr>") -- buffer delete
keymap.set("n", "<leader>s-", "<cmd>split<cr>") -- horizontal split
keymap.set("n", "<leader>s\\", "<cmd>vsplit<cr>") -- vertical split

keymap.set("n", "<S-h>", "<cmd>bprevious<cr>") -- move to previous buffer
keymap.set("n", "<S-l>", "<cmd>bnext<cr>") -- move to next buffer

keymap.set("n", "<leader>w", "<cmd>w<cr>") -- save file
keymap.set("n", "<leader>q", "<cmd>wqa<cr>") -- close all buffers

keymap.set("n", "Esc", "<cmd>noh<cr>")
keymap.set("n", "U", "<cmd>redo<cr>")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "J", "mzJ`z")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "dd", "_dd")
keymap.set("n", "<leader>d", "_d")
keymap.set("n", "<leader>D", "_D")

keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv")

keymap.set("n", "<leader>mkp", "<cmd>MarkdownPreview<cr>")

keymap.set("n", "<leader>df", "<cmd>Git diff<cr>")

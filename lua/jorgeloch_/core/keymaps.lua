vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>t", "<cmd>TransparentToggle<cr>")

keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")

keymap.set("n", "<S-h>", "<cmd>bprevious<cr>")
keymap.set("n", "<S-l>", "<cmd>bnext<cr>")
keymap.set("n", "<leader>c", "<cmd>BufferKill<cr>")

keymap.set("n", "<leader>w", "<cmd>w<cr>")
keymap.set("n", "<leader>q", "<cmd>wqa<cr>")

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

keymap.set("n", "<C-t>", "<cmd>Tp<cr>")

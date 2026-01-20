vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>pv", vim.cmd.Ex)

keymap.set("n", "<C-d>", "<C-d>zz", { noremap = "true" })
keymap.set("n", "<C-u>", "<C-u>zz", { noremap = "true" })
keymap.set("n", "<C-o>", "<C-o>zz", { noremap = "true" })
keymap.set("n", "<C-i>", "<C-i>zz", { noremap = "true" })

keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>af", ":Explore<CR>")

vim.keymap.set("n", "U", "<C-R>")

-- buffer controls
vim.keymap.set("n", "<leader>q", ":bdelete<CR>")
--vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "[b", ":bprevious<CR>")
vim.keymap.set("n", "]b", ":bnext<CR>")

vim.keymap.set("n", "<leader>w", ":w<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<C-e>", "3<C-e>")
vim.keymap.set("n", "<C-y>", "3<C-y>")

vim.keymap.set("n", "<C-/>", ":nohl<CR>")
vim.keymap.set("n", "<M-/>", ":nohl<CR>")

vim.keymap.set("n", "<leader>tr", ":Ex<CR>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "jk", "<Esc>")


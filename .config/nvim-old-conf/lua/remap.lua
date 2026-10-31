-- leader is space
vim.g.mapleader = " "

-- better redo map
vim.keymap.set("n", "U", "<C-R>")

-- buffer controls
vim.keymap.set("n", "<leader>q", ":bdelete<CR>")

--vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "[b", ":bprevious<CR>")
vim.keymap.set("n", "]b", ":bnext<CR>")

-- control quick fix list
vim.keymap.set("n", "]c", ":cnext<CR>")
vim.keymap.set("n", "[c", ":cprev<CR>")
vim.keymap.set("n", "<leader>co", ":copen<CR>")
vim.keymap.set("n", "<leader>cl", ":cclose<CR>")

-- better save map
vim.keymap.set("n", "<leader>w", ":w<CR>")

-- movie lives up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- center view on jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- scroll by 3 lines
vim.keymap.set("n", "<C-e>", "3<C-e>")
vim.keymap.set("n", "<C-y>", "3<C-y>")

-- turn off search highlight temporarly
vim.keymap.set("n", "<C-/>", ":nohl<CR>")
vim.keymap.set("n", "<M-/>", ":nohl<CR>")

-- access file tree
vim.keymap.set("n", "<leader>tr", ":Ex<CR>")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- vim.keymap.set("i", "jk", "<Esc>")


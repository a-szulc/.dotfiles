-- better redo
vim.keymap.set("n", "U", "<C-R>", {desc="redo"})

-- control quick fix list
vim.keymap.set("n", "]c", ":cnext<CR>", {desc="quickfix next"})
vim.keymap.set("n", "[c", ":cprev<CR>", {desc="quickfix prev"})
vim.keymap.set("n", "<leader>co", ":copen<CR>", {desc="quickfix open"})
vim.keymap.set("n", "<leader>cl", ":cclose<CR>", {desc="quickfix close"})

-- better save
vim.keymap.set("n", "<leader>w", ":w<CR>", {desc="save"})

-- movie lives up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc="move line down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc="move line up"})

-- J without moving cursor
vim.keymap.set("n", "J", "mzJ`z", {desc="connect lines without cursor move"})

-- center view on jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc="move down half a page"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc="move up half a page"})
vim.keymap.set("n", "n", "nzzzv", {desc="next search"})
vim.keymap.set("n", "N", "Nzzzv", {desc="prev search"})

-- scroll by 3 lines
vim.keymap.set("n", "<C-e>", "3<C-e>", {desc="move 3 lines down"})
vim.keymap.set("n", "<C-y>", "3<C-y>", {desc="move 3 lines up"})

-- turn off search highlight temporarly
vim.keymap.set("n", "<C-/>", ":nohl<CR>", {desc="search highlight off"})
vim.keymap.set("n", "<M-/>", ":nohl<CR>", {desc="search highlight off"})

-- access file tree
vim.keymap.set("n", "-", "<cmd>Oil<CR>", {desc="open file tree"})

-- greatest remap ever paste, delete, copy without overriding buffers
vim.keymap.set("x", "<leader>p", [["_dP]], {desc="paste, don't overrid buffer"})
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc="delete, don't overrid buffer"})
vim.keymap.set({"n", "v"}, "<leader>c", [["_c]], {desc="cut, don't overrid buffer"})
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], {desc="yank to clipboard"})
vim.keymap.set("n", "<leader>Y", [["+Y]], {desc="yank line to clipboard"})

--- --- --- ---
--- OPTIONS ---
--- --- --- ---

vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes:1"

vim.opt.splitright = true
vim.opt.splitbelow = true

-- vim.opt.jumpoptions = "stack,view"

-- vim.opt.showmode = false
vim.opt.cmdheight = 1

vim.opt.winborder = "bold"

-- automatic vim buffer autocomplete
-- probably more usefull when lsp unavaiable
-- laggy without delay and weird with
-- also grammar complete?
-- vim.opt.autocomplete = true
-- vim.opt.autocompletedelay = 300
vim.opt.completeopt = "menuone,noselect,popup,fuzzy"
vim.opt.wildoptions = "pum,tagfile,fuzzy"
vim.opt.wildmode = "noselect:lastused,full"

vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.hl.on_yank { higroup = "IncSearch", timeout = 250 }
  end,
})

-- don't show virtual line but virtual text
-- if more than 1 diagnostic on the line
-- CTRL-W d to show all diag
vim.diagnostic.config({
    virtual_lines = false,
    virtual_text = true
})

--- --- --- ---
--- KEYMAPS ---
--- --- --- ---

-- vim.keymap.set("n", "U", "<C-R>")
-- vim.keymap.set("n", "<leader>w", ":w<CR>")
-- vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<leader><leader>", ":source<CR>")

vim.keymap.set("n", "[b", ":bprevious<CR>")
vim.keymap.set("n", "]b", ":bnext<CR>")

-- control quick fix list
-- ctrl q to insert into quick fix list
vim.keymap.set("n", "]c", ":cnext<CR>")
vim.keymap.set("n", "[c", ":cprev<CR>")
vim.keymap.set("n", "<leader>co", ":copen<CR>")
vim.keymap.set("n", "<leader>cl", ":cclose<CR>")

-- movie lives up and down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- J without moving cursor
vim.keymap.set("n", "J", "mzJ`z")

-- center view on jumps
-- vim.keymap.set("n", "<C-d>", "<C-d>zz")
-- vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- scroll by 3 lines
-- vim.keymap.set("n", "<C-e>", "3<C-e>")
-- vim.keymap.set("n", "<C-y>", "3<C-y>")

-- turn off search highlight temporarly
vim.keymap.set("n", "<C-/>", ":nohl<CR>")
-- on laptop ctrl didn't work so I did alt
vim.keymap.set("n", "<M-/>", ":nohl<CR>")

-- access file tree
vim.keymap.set("n", "<leader>tr", ":Explore<CR>")

-- don't override copy buffer when leader paste
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--- --- --- ---
--- PLUGINS ---
--- --- --- ---

vim.pack.add({
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
    { src = "https://github.com/rebelot/kanagawa.nvim" },
})

local wave_colors = require("kanagawa.colors").setup({ theme = 'wave' })
local wave_palette = wave_colors.palette
require("kanagawa").setup({
    statementStyle = { bold = false },
    commentStyle = { italic = true },
    keywordStyle = { italic = false },
    colors = {
        theme = {
            wave = {
                ui = {
                    -- visual selection, waveBlue1 is default
                    bg_visual = wave_palette.waveBlue2,
                }
            },
            all = {
                ui = {
                    bg_gutter = "none",
                    -- cursorline
                    -- bg_p2 = wave_palette.sumiInk2,
                }
            }
        }
    },
    overrides = function(colors)
        return {
            Boolean = { bold = false },
            Return = { bold = false },
            -- LineNr = { fg = colors.palette.fujiGray },
        }
    end,
})
vim.cmd("colorscheme kanagawa")

require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
    ensure_installed = { "lua_ls" }
})
require('nvim-treesitter').setup({})

-- open completion automagiclly
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('my.lsp', {}),
    callback = function(args)
        local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
        end
    end,
})

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show line diagnostics" })

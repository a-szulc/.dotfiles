vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4 -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- amount to indent with << and >>
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.wrap = false

vim.opt.cursorline = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.signcolumn = "yes"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.jumpoptions = "stack,view"

vim.opt.showmode = false

vim.opt.cmdheight = 1

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = {
  tab = "  ",
  trail = "·",
  nbsp = "␣"
}

vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', {}),
  desc = 'Hightlight selection on yank',
  pattern = '*',
  callback = function()
    vim.highlight.on_yank { higroup = 'IncSearch', timeout = 400 }
  end,
})

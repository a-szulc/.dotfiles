return {
  -- "rebelot/kanagawa.nvim", opts = { }
  "rebelot/kanagawa.nvim",
  config=function()
    local wave_colors = require("kanagawa.colors").setup({ theme = 'wave' })
    local wave_palette = wave_colors.palette
    require('kanagawa').setup({
      compile=true,
      colors = {
        theme = {
          wave = {
            ui = {
              -- visual selection
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
        local theme = colors.theme
        return {
          -- NormalFloat = { bg = "none" },
          -- FloatBorder = { bg = "none" },
          -- FloatTitle = { bg = "none" },

          -- better markdown highlighting
          ["@markup.link.url.markdown_inline"] = { link = "Special" }, -- (url)
          ["@markup.link.label.markdown_inline"] = { link = "WarningMsg" }, -- [label]
          ["@markup.italic.markdown_inline"] = { link = "Exception" }, -- *italic*
          ["@markup.raw.markdown_inline"] = { link = "String" }, -- `code`
          ["@markup.list.markdown"] = { link = "Function" }, -- + list
          ["@markup.quote.markdown"] = { link = "Error" }, -- > blockcode
          ["@markup.list.checked.markdown"] = { link = "WarningMsg" } -- - [X] checked list item

          -- more uniform colors for the popup menu.
          -- Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },  -- add `blend = vim.o.pumblend` to enable transparency
          -- PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          -- PmenuSbar = { bg = theme.ui.bg_m1 },
          -- PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    });
    vim.cmd("colorscheme kanagawa-wave");
  end,
  -- build = function()
  --  vim.cmd("KanagawaCompile");
  -- end,
}

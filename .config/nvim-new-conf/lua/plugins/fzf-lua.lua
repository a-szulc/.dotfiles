return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  dependencies = { "echasnovski/mini.icons", opts = {} },
  opts = {
    -- "telescope",
    "border-fused",
    -- winopts = {
    --   border = "solid",
    -- },
    keymap = {
      fzf = {
        ["ctrl-q"] = "select-all+accept",
      },
    },
  },
  keys={
    {
      -- "<leader>pf",
      "<C-p>",
      function() require('fzf-lua').files() end,
      desc="Find Files in project directory"
    },
    {
      "<leader>fs",
      function() require('fzf-lua').live_grep() end,
      desc="[F]ind [s]tring"
    },
    {
      "<leader>fu",
      function() require('fzf-lua').grep_cword() end,
      mode="n",
      desc="[F]ind word [u]nder cursor"
    },
    {
      "<leader>fU",
      function() require('fzf-lua').grep_cWORD() end,
      mode="n",
      desc="[F]ind WORD [u]nder cursor"
    },
    {
      "<leader>fu",
      function() require('fzf-lua').grep_visual() end,
      mode="v",
      desc="[F]ind string [u]nder cursor"
    },
    {
      "<leader>fb",
      function() require("fzf-lua").buffers() end,
      desc = "[F]ind [b]uffers",
    },
    {
      "<leader>flt",
      function() require("fzf-lua").builtin() end,
      desc = "[F]ind Bui[lt]in FZF",
    },
    {
      "<leader>fh",
      function() require("fzf-lua").helptags() end,
      desc = "[F]ind [H]elp",
    },
    {
      "<leader>fk",
      function() require("fzf-lua").keymaps() end,
      desc = "[F]ind [K]eymaps",
    },
  }
}

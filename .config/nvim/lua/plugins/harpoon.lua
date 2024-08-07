return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()

        local harpoon = require("harpoon")

        -- REQUIRED
        harpoon:setup()
        -- REQUIRED

        vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)

        vim.keymap.set("n", "<leader>h", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)

        -- vim.keymap.set("n", "<C-5>", function() harpoon:list():select(5) end)
        -- vim.keymap.set("n", "<C-6>", function() harpoon:list():select(6) end)
        -- vim.keymap.set("n", "<C-7>", function() harpoon:list():select(7) end)
        -- vim.keymap.set("n", "<C-8>", function() harpoon:list():select(8) end)
        -- vim.keymap.set("n", "<C-9>", function() harpoon:list():select(9) end)
        -- vim.keymap.set("n", "<C-0>", function() harpoon:list():select(10) end)

    end,
}

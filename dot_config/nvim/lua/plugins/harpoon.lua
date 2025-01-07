return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      -- REQUIRED
      harpoon:setup()

      -- Basic keymaps
      vim.keymap.set("n", "<leader>ha", function()
        harpoon:list():add()
      end, { desc = "Harpoon add file" })

      vim.keymap.set("n", "<leader>he", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Harpoon quick menu" })

      -- Toggle previous & next buffers stored within Harpoon list
      vim.keymap.set("n", "<C-P>", function()
        harpoon:list():prev()
      end, { desc = "Harpoon prev file" })

      vim.keymap.set("n", "<C-N>", function()
        harpoon:list():next()
      end, { desc = "Harpoon next file" })

      -- Delete files from Harpoon list
      vim.keymap.set("n", "<leader>hd", function()
        harpoon:list():remove()
      end, { desc = "Harpoon delete current file" })

      -- Add remove all functionality
      vim.keymap.set("n", "<leader>hD", function()
        harpoon:list():clear()
      end, { desc = "Harpoon remove all files" })
    end,
  },
}

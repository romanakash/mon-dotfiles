return {
  "telescope.nvim",
  dependencies = {
    -- project management
    {
      "ahmedkhalf/project.nvim",
      opts = {
        manual_mode = true,
      },
      event = "VeryLazy",
      config = function(_, opts)
        require("project_nvim").setup(opts)
        require("lazyvim.util").on_load("telescope.nvim", function()
          require("telescope").load_extension("projects")
        end)
      end,
      keys = {
        { "<leader>sj", "<Cmd>Telescope jumplist<CR>", desc = "Jumps" },
        { "<leader>sq", "<Cmd>Telescope quickfix<CR>", desc = "Jumps" },
      },
    },
  },
}

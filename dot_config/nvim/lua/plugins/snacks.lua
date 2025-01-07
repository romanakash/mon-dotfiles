return {
  "folke/snacks.nvim",
  opts = {},
  keys = {
    {
      "<leader>z",
      function()
        Snacks.zen()
      end,
      desc = "Toggle Zen Mode",
    },
    {
      "<leader>Z",
      function()
        Snacks.dim()
      end,
      desc = "Toggle Zoom",
    },
  },
}

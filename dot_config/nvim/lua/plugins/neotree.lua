return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  cmd = "Neotree",
  config = function()
    require("neo-tree").setup({
      window = {
        position = "float",
      },
    })
  end,
}

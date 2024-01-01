return {
  "chentoast/marks.nvim",
  config = function()
    require("marks").setup({})

    vim.keymap.set("n", "<leader>tq", ":MarksQFListAll<CR>")
  end,
}

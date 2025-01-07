return {
  "aaronik/treewalker.nvim",
  opts = {},
  init = function()
    vim.api.nvim_set_keymap("n", "<C-]>", ":Treewalker Down<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<C-[>", ":Treewalker Up<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<M-[>", ":Treewalker Left<CR>", { noremap = true })
    vim.api.nvim_set_keymap("n", "<M-]>", ":Treewalker Right<CR>", { noremap = true })
  end,
}

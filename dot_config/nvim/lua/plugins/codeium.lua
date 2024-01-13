return {
  'Exafunction/codeium.vim',
  config = function()
    vim.g.codeium_enabled = false

    vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
      { expr = true, silent = true })
    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
      { expr = true, silent = true })
  end
}

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = function()
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    return {
      options = {
        theme = "auto",
      },
      sections = {
        lualine_c = {
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", path = 1 },
        },
        lualine_x = {},
        lualine_y = {
          { "location", padding = { left = 0, right = 1 } },
        },
        lualine_z = {}
      },
    }
  end
}

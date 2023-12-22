return {
  "stevearc/conform.nvim",
  opts = function()
    return {
      formatters = {
        sql = {
          command = "sleek",
          condition = function(ctx)
            if string.find(ctx.filename, ".sql") then
              return true
            else
              return true
            end
          end,
        },
      },
      formatters_by_ft = {
        sql = { "sql" },
      },
    }
  end,
}

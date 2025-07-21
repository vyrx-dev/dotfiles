return {
  "NStefan002/screenkey.nvim",
  lazy = false,
  version = "*", -- or branch = "main", to use the latest commit
  config = function()
    require("screenkey").setup({
      win_opts = {
        width = 18,
        height = 1,
        title = "",
      },
    })
  end,
}

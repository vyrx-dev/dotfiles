return {
  "mistricky/codesnap.nvim",
  build = "make",
  config = function()
    require("codesnap").setup({
      watermark = "",
      save_path = "~/Pictures/CodeSnaps", -- Set a save directory
    })
  end,
}

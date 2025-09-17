return {
  "vimichael/floatingtodo.nvim",
  config = function()
    require("floatingtodo").setup({
      target_file = "~/Documents/Obsidian-Notes/todo.md",
      border = "single", -- single, rounded, etc.
      width = 0.8, -- width of window in % of screen size
      height = 0.8, -- height of window in % of screen size
      position = "center", -- topleft, topright, bottomleft, bottomright
    })
    vim.keymap.set("n", "<leader>tx", ":Td<CR>", { silent = true })
  end,
}

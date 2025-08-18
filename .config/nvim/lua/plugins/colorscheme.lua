return {
  -- Solarized Osaka
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
    },
  },
  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      transparent = true,
      theme = "wave",
    },
  },
  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      -- Added optional setting for consistency
      transparent_mode = true,
    },
  },
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    priority = 1000,
    opts = {},
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_palette = "material"
      vim.opt.termguicolors = true
    end,
  },
  -- Catppuccin (pre-installed, added for custom settings)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    opts = {
      transparent_background = true,
    },
  },
  -- Tokyo Night (pre-installed, added for custom settings)
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = {
      style = "night",
      transparent = true,
    },
  },
  -- Set the active theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material", -- Change the Themes
    },
  },
}

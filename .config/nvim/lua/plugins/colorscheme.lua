return {
  { "ellisonleao/gruvbox.nvim", lazy = true, opts = { transparent_mode = false } },
  { "folke/tokyonight.nvim", lazy = true, opts = { style = "night", transparent = false } },
  { "rebelot/kanagawa.nvim", lazy = true, opts = {} },
  { "rose-pine/neovim", lazy = true, opts = {} },
  { "metalelf0/black-metal-theme-neovim", lazy = true, opts = {} },
  { "vague2k/vague.nvim", priority = 1000, lazy = true, opts = { transparent = false } }, -- fav theme

  -- only this will be loaded on startup
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = { transparent = false },
    config = function(_, opts)
      require("solarized-osaka").setup(opts)
      vim.cmd.colorscheme "solarized-osaka"
    end,
  },

  -- superior gruvbox variant
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_transparent_background = 0
    end,
  },

  {
    "xiyaowong/transparent.nvim",
    lazy = false,
    opts = {
      extra_groups = {
        "NvimTreeNormal",
        "NvimTreeNormalNC",
        "NvimTreeSignColumn",
        "NvimTreeEndOfBuffer",
        "NvimTreeWinSeparator",
      },
    },
  },
}

return {
  { "ellisonleao/gruvbox.nvim", lazy = true, opts = { transparent_mode = false } },
  { "folke/tokyonight.nvim", lazy = true, opts = { style = "night", transparent = false } },
  { "rose-pine/neovim", lazy = true, opts = {} },
  { "metalelf0/black-metal-theme-neovim", lazy = true, opts = {} },
  { "craftzdog/solarized-osaka.nvim", lazy = true, opts = { transparent = false } },
  { "vague-theme/vague.nvim", lazy = true, opts = { transparent = false } },

  -- superior gruvbox variant
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_transparent_background = 0
    end,
  },

  -- leader + tt to toggle transparency
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

  -- only this theme will be loaded on startup
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      keywordStyle = { italic = false },

      -- Remove gutter background
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },

      overrides = function(colors)
        local theme = colors.theme
        return {
          ["@keyword.coroutine"] = { fg = theme.syn.special, bold = true },
          ["@keyword.function"] = { fg = theme.syn.fun, bold = true },
        }
      end,
    },

    config = function()
      vim.cmd.colorscheme "kanagawa"
    end,
  },
}

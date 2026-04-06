-- Install lazy.nvim
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Config
require "config.options"
require "config.keymaps"
require "config.autocmd"

require("lazy").setup {
  spec = {
    { import = "plugins" },
  },
  rtp = {
    disabled_plugins = {
      "netrw",
      "netrwPlugin",
    },
  },
  -- automatically check for plugin updates
  checker = { enabled = true },
}

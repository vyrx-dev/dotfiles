-- Enable Lua module caching (faster startup in Neovim 0.9+)
if vim.loader then
  vim.loader.enable()
end

-- Global debug print function (use: dd() or vim.print())
-- Shows tables and nested data in a readable format
_G.dd = function(...)
  require("util.debug").dump(...)
end
vim.print = _G.dd

-- Load LazyVim and plugin config
require("config.lazy")

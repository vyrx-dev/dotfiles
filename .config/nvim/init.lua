-- Enable Lua module caching (faster startup in Neovim 0.9+)
if vim.loader then
  vim.loader.enable()
end

-- Load LazyVim and plugin config
require("config.lazy")

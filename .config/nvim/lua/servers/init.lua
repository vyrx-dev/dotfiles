-- global capabilities shared across all LSP servers
vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

-- per-server configs
require "servers.lua_ls"
require "servers.pyright"
require "servers.gopls"
require "servers.jsonls"
require "servers.ts_ls"
require "servers.bashls"
require "servers.dockerls"
require "servers.emmet_ls"
require "servers.yamlls"
require "servers.tailwindcss"

vim.lsp.enable {
  "lua_ls",
  "pyright",
  "gopls",
  "jsonls",
  "ts_ls",
  "bashls",
  "dockerls",
  "emmet_ls",
  "yamlls",
  "tailwindcss",
}

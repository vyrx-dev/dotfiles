-- ================================================================================================
-- TITLE : yamlls (YAML Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/redhat-developer/yaml-language-server
-- ================================================================================================

vim.lsp.config("yamlls", {
  filetypes = { "yaml" },
  settings = {
    yaml = {
      schemas = {
        ["https://json.schemastore.org/composer.json"] = "composer.json",
        ["https://json.schemastore.org/docker-compose.json"] = "docker-compose*.yml",
      },
      validate = true,
      format = {
        enable = true,
      },
    },
  },
})

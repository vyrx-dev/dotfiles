-- ================================================================================================
-- TITLE : pyright (Python Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/microsoft/pyright
-- ================================================================================================

vim.lsp.config("pyright", {
  settings = {
    pyright = {
      disableOrganizeImports = false,
      analysis = {
        useLibraryCodeForTypes = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        autoImportCompletions = true,
      },
    },
  },
})

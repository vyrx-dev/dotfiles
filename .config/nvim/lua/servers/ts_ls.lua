-- ================================================================================================
-- TITLE : ts_ls (TypeScript Language Server) LSP Setup
-- LINKS :
--   > github: https://github.com/typescript-language-server/typescript-language-server
-- ================================================================================================

vim.lsp.config("ts_ls", {
  filetypes = {
    "typescript",
    "javascript",
    "typescriptreact",
    "javascriptreact",
  },
  settings = {
    typescript = {
      indentStyle = "space",
      indentSize = 2,
    },
  },
})

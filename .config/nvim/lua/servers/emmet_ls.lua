-- ================================================================================================
-- TITLE : emmet_ls (Emmet Language Server) LSP Setup
-- ABOUT : Configures Emmet Language Server for web-related (e.g. TS/JS, CSS, Sass, Svelte, Vue)
-- LINKS :
--   > github: https://github.com/aca/emmet-ls
-- ================================================================================================

vim.lsp.config("emmet_ls", {
  filetypes = {
    "html",
    "typescript",
    "javascript",
    "javascriptreact",
    "typescriptreact",
    "css",
    "sass",
    "scss",
    "svelte",
    "vue",
  },
})

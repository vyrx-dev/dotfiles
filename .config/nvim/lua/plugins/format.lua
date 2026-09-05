return {
  -- Formatting via conform.nvim
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        nix = { "alejandra" },
        go = { "gofumpt", "goimports" },
        lua = { "stylua" },
        python = { "black" },
        sh = { "shfmt" },
        json = { "prettierd" },
        yaml = { "prettierd" },
        javascript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescript = { "prettierd" },
        typescriptreact = { "prettierd" },
        css = { "prettierd" },
        html = { "prettierd" },
        markdown = { "prettierd" },
      },
      format_on_save = function(bufnr)
        if not vim.g.autoformat_enabled then
          return
        end
        return { timeout_ms = 500, lsp_format = "never" }
      end,
    },
  },
}

-- Flutter development tools
-- NOTE: This plugin manages dartls LSP - do NOT configure dartls separately
-- NOTE: Debug keybindings use <leader>x prefix (see lua/plugins/dap.lua)
return {
  "nvim-flutter/flutter-tools.nvim",
  ft = "dart",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim",
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("flutter-tools").setup {
      flutter_path = "/home/vyrx/dev-tools/flutter/bin/flutter",
      widget_guides = { enabled = true },
      debugger = {
        enabled = true,
        evaluate_to_string_in_debug_views = true,
      },
      lsp = {
        color = { enabled = true, virtual_text = true },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          renameFilesWithClasses = "always",
          enableSnippets = true,
          updateImportsOnRename = true,
          analysisExcludedFolders = {
            vim.fn.expand "$HOME/.pub-cache",
            vim.fn.expand "$HOME/dev-tools/flutter/",
          },
        },
      },
    }
  end,
  keys = {
    { "<leader>kr", "<cmd>FlutterReload<cr>", desc = "Flutter: Hot Reload" },
    { "<leader>kR", "<cmd>FlutterRestart<cr>", desc = "Flutter: Hot Restart" },
    { "<leader>kd", "<cmd>FlutterRun<cr>", desc = "Flutter: Run" },
    { "<leader>kD", "<cmd>FlutterDebug<cr>", desc = "Flutter: Debug Mode" },
    { "<leader>kq", "<cmd>FlutterQuit<cr>", desc = "Flutter: Quit" },
    { "<leader>ko", "<cmd>FlutterOutlineToggle<cr>", desc = "Flutter: Toggle Outline" },
    { "<leader>ke", "<cmd>FlutterEmulators<cr>", desc = "Flutter: Emulators" },
    { "<leader>km", "<cmd>FlutterDevices<cr>", desc = "Flutter: Devices" },
    { "<leader>ks", "<cmd>FlutterSuper<cr>", desc = "Flutter: Go to Super" },
    { "<leader>kl", "<cmd>FlutterLogToggle<cr>", desc = "Flutter: Toggle Log" },
  },
}

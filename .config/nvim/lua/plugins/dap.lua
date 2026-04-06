-- Debug Adapter Protocol (DAP) - Centralized debugging for all languages
-- Supports: Flutter/Dart (via flutter-tools), Go (via nvim-dap-go)
return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      { "rcarriga/nvim-dap-ui", dependencies = { "nvim-neotest/nvim-nio" } },
      { "theHamsta/nvim-dap-virtual-text", opts = {} },
      "leoluz/nvim-dap-go",
    },
    keys = {
      { "<leader>xb", function() require("dap").toggle_breakpoint() end, desc = "Debug: Toggle Breakpoint" },
      { "<leader>xB", function() require("dap").set_breakpoint(vim.fn.input("Condition: ")) end, desc = "Debug: Conditional Breakpoint" },
      { "<leader>xc", function() require("dap").continue() end, desc = "Debug: Continue/Start" },
      { "<leader>xn", function() require("dap").step_over() end, desc = "Debug: Step Over" },
      { "<leader>xi", function() require("dap").step_into() end, desc = "Debug: Step Into" },
      { "<leader>xo", function() require("dap").step_out() end, desc = "Debug: Step Out" },
      { "<leader>xt", function() require("dap").terminate() end, desc = "Debug: Terminate" },
      { "<leader>xr", function() require("dap").repl.toggle() end, desc = "Debug: Toggle REPL" },
      { "<leader>xu", function() require("dapui").toggle() end, desc = "Debug: Toggle UI" },
      { "<leader>xg", function() require("dap-go").debug_test() end, ft = "go", desc = "Debug: Go Test (nearest)" },
      { "<leader>xG", function() require("dap-go").debug_last_test() end, ft = "go", desc = "Debug: Go Test (last)" },
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()

      -- NO auto-open UI - virtual text shows values inline
      -- Press <leader>xu to toggle UI panels when needed
      dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
      dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

      require("dap-go").setup()
    end,
  },
}

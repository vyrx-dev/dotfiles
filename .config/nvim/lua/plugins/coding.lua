return {
  -- Incremental rename
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    config = true,
  },

  -- copilot
  {
    "zbirenbaum/copilot.lua",
    opts = {
      suggestion = {
        auto_trigger = false,
        keymap = {
          accept = "<C-l>",
          accept_word = "<M-l>",
          accept_line = "<M-S-l>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<C-]>",
        },
      },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },

  -- copilot chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      -- See Configuration section for options
    },
    keys = {
      { "<leader>a", "<cmd>CopilotChat<CR>", mode = "n", desc = "Open Copilot Chat" },
      { "<leader>te", "<cmd>CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
      { "<leader>tr", "<cmd>CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
      { "<leader>tf", "<cmd>CopilotChatFix<CR>", mode = "v", desc = "Fix Code Issues" },
      { "<leader>to", "<cmd>CopilotChatOptimize<Cr>", mode = "v", desc = "Optimize Code" },
      { "<leader>td", "<cmd>CopilotChatDocs<CR>", mode = "v", desc = "Generate Docs" },
      { "<leader>tt", "<cmd>CopilotChatTests<CR>", mode = "v", desc = "Generate Tests" },
      { "<leader>tm", "<cmd>CopilotChatCommit<CR>", mode = "n", desc = "Generate Commit Message" },
      { "<leader>ts", "<cmd>CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit for Selection" },
    },
  },
}

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymap helper
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- jj to escape insert mode
keymap.set("i", "jj", "<Esc>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Paste in visual mode without yanking replaced text
-- keymap.set("x", "p", [["_dP]])

-- Tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "tw", ":tabclose<Return>", opts) --not working
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<leader><left>", ":vertical resize +20<cr>")
keymap.set("n", "<leader><right>", ":vertical resize -20<cr>")
keymap.set("n", "<leader><up>", ":resize +10<cr>")
keymap.set("n", "<leader><down>", ":resize -10<cr>")

-- Diagnostics

-- Go to next diagnostic
keymap.set("n", "<C-j>", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, opts)

--[[Notes
count = 1 → moves to next diagnostic
count = -1 → moves to previous diagnostic
float = true → shows a floating window with the error/warning message
]]

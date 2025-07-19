-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymap helper
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- jj to escape insert mode
keymap.set("i", "jj", "<Esc>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

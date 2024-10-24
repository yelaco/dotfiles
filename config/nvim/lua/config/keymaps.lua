-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

local map = vim.keymap.set

map("n", "<leader><S-r>", "", { desc = "Rest"})
map("n", "<leader><S-r>o", "<cmd>Rest open<cr>", { desc = "Open"})
map("n", "<leader><S-r>s", "<cmd>Rest run<cr>", { desc = "Send request"})
map("n", "<leader><S-r>l", "<cmd>Rest logs<cr>", { desc = "View logs"})
map("n", "<leader><S-r>e", "<cmd>Rest env<cr>", { desc = "Select env"})

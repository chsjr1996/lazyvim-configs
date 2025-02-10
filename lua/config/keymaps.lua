-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Tabs/buffers
keymap.set("n", "<M-c>", ":bw<CR>", opts)
keymap.set("n", "<C-q>", ":q<CR>", opts)

-- Split window
keymap.set("n", "<M-x>", ":split<Return>", opts)
keymap.set("n", "<M-v>", ":vsplit<Return>", opts)

-- fzf lua
keymap.set("n", "<M-f>", ":FzfLua grep_curbuf<cr>", opts)
keymap.set("n", "<C-p>", ":FzfLua files<cr>", opts)
keymap.set("n", "<M-s>", ":FzfLua lsp_document_symbols<cr>", opts)
keymap.set("n", "<Tab>", ":FzfLua buffers<cr>", opts)

-- Dot not yank
keymap.set("n", "x", '"_x', opts)
keymap.set("n", "c", '"_c', opts)
keymap.set("v", "x", '"_x', opts)
keymap.set("v", "c", '"_c', opts)

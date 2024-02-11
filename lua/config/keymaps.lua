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

-- Split window
keymap.set("n", "<M-x>", ":split<Return>", opts)
keymap.set("n", "<M-v>", ":vsplit<Return>", opts)

-- Telescope
keymap.set("n", "<M-f>", ":Telescope current_buffer_fuzzy_find case_mode=ignore_case<cr>", opts)
keymap.set("n", "<C-p>", ":Telescope find_files<cr>", opts)
keymap.set("n", "<M-p>", ":Telescope file_browser path=%:p:h<cr>", opts)
keymap.set("n", "<M-s>", ":Telescope lsp_document_symbols<cr>", opts)
keymap.set("n", "<Tab>", ":Telescope buffers<cr>", opts)

-- Dot not yank
keymap.set("n", "x", '"_x', opts)
keymap.set("n", "c", '"_c', opts)
keymap.set("v", "x", '"_x', opts)
keymap.set("v", "c", '"_c', opts)

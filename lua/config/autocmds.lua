-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.php" },
  callback = function()
      vim.cmd("setlocal ts=4 sw=4")
  end
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.blade.php" },
  callback = function()
    vim.cmd("set syntax=html")
    vim.cmd("setlocal ts=4 sw=4")
  end
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  pattern = { "*.twig" },
  callback = function()
    vim.cmd("set syntax=html")
    vim.cmd("setlocal ts=4 sw=4")
  end
})

vim.api.nvim_create_autocmd({ "VimLeave" }, {
  callback = function()
    vim.cmd("set guicursor=a:hor20")
  end
})

-- Lumen
vim.api.nvim_create_autocmd({ "User" }, {
  pattern = "LumenLight",
  callback = function()
    --print('light now...')
  end
})

vim.api.nvim_create_autocmd({ "User" }, {
  pattern = "LumenDark",
  callback = function()
    --print('dark now...')
  end
})

-- Keymaps
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true, silent = true })

-- Editor options
vim.wo.relativenumber = true
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.o.clipboard = 'unnamedplus'
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.updatetime = 300
vim.o.termguicolors = true
vim.o.mouse = 'a'

-- leader (space)
vim.g.mapleader = " "

-- tab behaviour
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- wrapping
vim.opt.wrap = false

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- keybindings
vim.keymap.set("i", "jj", "<ESC>", { desc = "exit insert mode", silent = true }) -- insert mode: jj goes to normal mode

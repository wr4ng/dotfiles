-- leader (space)
vim.g.mapleader = " "

-- tab behaviour
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- keybindings
vim.keymap.set("i", "jj", "<ESC>", { silent = true }) -- insert mode: jj goes to normal mode

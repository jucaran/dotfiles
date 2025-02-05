vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set number")
vim.keymap.set("n", "<C-W>M", "<C-W>|<C-W>_", { noremap = true, silent = true })
vim.keymap.set("n", "<C-W>m", "<C-W>=", { noremap = true, silent = true })

vim.g.mapleader = " "

require("config.lazy")

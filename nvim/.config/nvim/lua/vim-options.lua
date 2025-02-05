vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set number")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", "<C-W>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wM", "<C-W>|<C-W>_", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>wm", "<C-W>=", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>tn", ":tabnext<CR>", { desc = "Next Tab" })
vim.keymap.set("n", "<leader>tb", ":tabprevious<CR>", { desc = "Previous Tab" })
vim.keymap.set("n", "<leader>tc", ":tabclose<CR>", { desc = "Close Tab" })
vim.keymap.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open New Tab" })


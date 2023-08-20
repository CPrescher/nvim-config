vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.expand("~/nvim/undodir")
vim.opt.undofile = true

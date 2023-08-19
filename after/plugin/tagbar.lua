-- map tagbar to <F8>
vim.keymap.set("n", "<F8>", ":TagbarToggle<CR>", { noremap = true, silent = true })

-- disable sorting
vim.g.tagbar_sort = 0

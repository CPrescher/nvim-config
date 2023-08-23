-- save file before running tests
vim.keymap.set('n', '<leader>t', ':w | TestNearest<CR>',
                { noremap = true, silent = true })
vim.keymap.set('n', '<leader>T', ':w | TestFile<CR>',
                { noremap = true, silent = true })
vim.keymap.set('n', '<leader>a', ':w | TestSuite<CR>',
                { noremap = true, silent = true })
vim.keymap.set('n', '<leader>l', ':w | TestLast<CR>',
                { noremap = true, silent = true })

-- run in neovim strategy
vim.g['test#strategy'] = 'neovim'


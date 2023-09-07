-- disable default mappings
vim.g.NERDCreateDefaultMappings = 0

-- toggle commenting
vim.api.nvim_set_keymap("n", "<leader>c", "<plug>NERDCommenterToggle", {})
vim.api.nvim_set_keymap("v", "<leader>c", "<plug>NERDCommenterToggle", {})

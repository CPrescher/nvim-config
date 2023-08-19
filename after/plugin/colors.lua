function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
    -- require('monokai').setup { palette = require('monokai').pro }
    --Lua
    --vim.cmd[[colorscheme nord]]
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

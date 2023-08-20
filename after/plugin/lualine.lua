require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {
                'packer',
                'dashboard',
                'TelescopePrompt',
                'fzf',
                'alpha',
            },
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 100,
            tabline = 100,
            winbar = 100,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {},
        lualine_x = {'branch', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename', 'diff'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {
        lualine_a = {},
        lualine_b = {
            {
                'buffers',
                show_filename_only = true,   -- Shows shortened relative path when set to false.
                hide_filename_extension = true,   -- Hide filename extension when set to true.
                show_modified_status = true, -- Shows indicator when the buffer is modified.

                mode = 2, -- 0: Shows buffer name
                -- 1: Shows buffer index
                -- 2: Shows buffer name + buffer index
                -- 3: Shows buffer number
                -- 4: Shows buffer name + buffer number

                filetype_names = {
                    TelescopePrompt = 'Telescope',
                    dashboard = 'Dashboard',
                    packer = 'Packer',
                    fzf = 'FZF',
                    alpha = 'Alpha'
                }, -- Shows specific buffer name for that filetype ( { `filetype` = `buffer_name`, ... } )

                -- Automatically updates active buffer color to match color of other components (will be overidden if buffers_color is set)
                use_mode_colors = false,
            }
        },
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {
        'nvim-tree',
        'fzf',
        'quickfix',
        'fugitive',
    }
}


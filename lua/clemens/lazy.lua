require('lazy').setup({
    -- Git related plugins
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',

    {
        -- LSP Configuration & Plugins
        'neovim/nvim-lspconfig',
        dependencies = {
            -- Automatically install LSPs to stdpath for neovim
            { 'williamboman/mason.nvim', config = true },
            'williamboman/mason-lspconfig.nvim',

            -- Useful status updates for LSP
            -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
            { 'j-hui/fidget.nvim',       tag = 'legacy', opts = {} },

            -- Additional lua configuration, makes nvim stuff amazing!
            'folke/neodev.nvim',
        },
    },
    {
        -- Autocompletion
        'hrsh7th/nvim-cmp',
        dependencies = {
            -- Snippet Engine & its associated nvim-cmp source
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',

            -- Adds LSP completion capabilities
            'hrsh7th/cmp-nvim-lsp',

            -- Adds a number of user-friendly snippets
            'rafamadriz/friendly-snippets',
        },
    },

    -- Fuzzy Finder (files, lsp, etc)
    {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            -- Fuzzy Finder Algorithm which requires local dependencies to be built.
            -- Only load if `make` is available. Make sure you have the system
            -- requirements installed.
            {
                'nvim-telescope/telescope-fzf-native.nvim',
                -- NOTE: If you are having trouble with this installation,
                --       refer to the README for telescope-fzf-native for more instructions.
                build = 'make',
                cond = function()
                    return vim.fn.executable 'make' == 1
                end,
            },
        },
    },

    {
        -- Highlight, edit, and navigate code
        'nvim-treesitter/nvim-treesitter',
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
        },
        build = ':TSUpdate',
    },

    -- Navigation related Plugins
    'preservim/tagbar',
    'liuchengxu/vista.vim',

    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'onedark',
                component_separators = '|',
                section_separators = '',
            },
        },
    },

    {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        main = "ibl",
        opts = {},
    },

    -- "<leader>c" to comment visual regions/lines
    "numToStr/Comment.nvim",

    -- install Nvimtree
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',

    -- start screen
    'mhinz/vim-startify',

    -- using a floating terminal
    {
        "akinsho/toggleterm.nvim",
        opts = {
            -- set terminal to powershell
            shell = 'powershell.exe',
            highlights = {
                Normal = { link = "Normal" },
                NormalNC = { link = "NormalNC" },
                NormalFloat = { link = "NormalFloat" },
                FloatBorder = { link = "FloatBorder" },
                StatusLine = { link = "StatusLine" },
                StatusLineNC = { link = "StatusLineNC" },
                WinBar = { link = "WinBar" },
                WinBarNC = { link = "WinBarNC" },
            },
            size = 10,
            on_create = function()
                vim.opt.foldcolumn = "0"
                vim.opt.signcolumn = "no"
            end,
            open_mapping = [[<F7>]],
            shading_factor = 2,
            direction = "float",
            float_opts = { border = "rounded" },
        },
    },


    -- -- Styles
    'rose-pine/neovim',
    'theprimeagen/harpoon',

    'mbbill/undotree',
    'vim-test/vim-test',
    'github/copilot.vim',
    'tpope/vim-obsession',
}, {})

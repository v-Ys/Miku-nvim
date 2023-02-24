return {

        --theme
        { 'Th3Whit3Wolf/one-nvim' },
        { "sainnhe/edge" },
        -- { 'sonph/onehalf',                            rtp = 'vim' },
        {
                'projekt0n/github-nvim-theme',
                version = "v0.0.4",
                config = function()
                        vim.cmd([[colorscheme github_light]])
                end,
        },
        { 'EdenEast/nightfox.nvim', pin = true },
        { "catppuccin/nvim", pin = true },
        { "sainnhe/everforest", pin = true },
        { 'dracula/vim', name = 'dracula' },

        { 'kyazdani42/nvim-web-devicons' }, --icons
        { 'nvim-lualine/lualine.nvim',
                config = function()
                        require('Miku-vim.plugin.conf.lualine')
                end

        }, --lualine

        { 'goolord/alpha-nvim',
                config = function()
                        require("Miku-vim.plugin.conf.alpha")
                end,
        },

        { 'lukas-reineke/indent-blankline.nvim',
                config = function()
                        require("indent_blankline").setup {
                                show_end_of_line = true,
                        }
                        vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
                        vim.g.indent_blankline_filetype_exclude = {
                                "help",
                                "dashboard",
                                "packer",
                                "neogitstatus",
                                "NvimTree",
                                "Trouble",
                        }
                end,
        }, --indentline

        { 'akinsho/bufferline.nvim',
                version = "v2.*",
                config = function()
                        require("Miku-vim.plugin.conf.bufferline")
                end,
        },

        --cmp
        { 'hrsh7th/nvim-cmp',
                dependencies = {
                        { 'hrsh7th/cmp-nvim-lsp' }, --for lsp
                        { 'hrsh7th/cmp-buffer' }, -- buffer completions
                        { 'hrsh7th/cmp-path' }, -- path completions
                        { 'hrsh7th/cmp-cmdline' }, -- cmdline completions
                },
                config = function()
                        require("Miku-vim.plugin.conf.cmp")
                end,
        },
        --snip,
        { 'saadparwaiz1/cmp_luasnip' },
        { 'L3MON4D3/LuaSnip' }, --snippet engine
        { 'rafamadriz/friendly-snippets' }, -- a bunch of snippets to

        --LSP
        { 'williamboman/mason.nvim' }, --install lsp server
        { "jose-elias-alvarez/null-ls.nvim" }, --  commit = "ff40739e5be6581899b43385997e39eecdbf9465" } -- for formatters and linters
        { 'ray-x/lsp_signature.nvim', },
        { 'neovim/nvim-lspconfig',

                config = function()
                        require("Miku-vim.plugin.conf.lsp")
                end,
        }, -- enable LSP


        --Telescope,
        {
                'nvim-telescope/telescope.nvim',
                dependencies = {
                        { 'nvim-lua/plenary.nvim' },
                },
                config = function()
                        require('Miku-vim.plugin.conf.telescope')
                end
        },
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        { 'ahmedkhalf/project.nvim' }, --project


        -- treesitter
        { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',

                dependencies =
                { 'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async' }, --fold
                config = function()
                        require('Miku-vim.plugin.conf.treesitter')
                end,
        }, --better syntax highlight

        { 'windwp/nvim-autopairs',
                config = function()
                        require("nvim-autopairs")
                end,
        },
        { 'numToStr/Comment.nvim',
                config = function()
                        require("Comment").setup()
                end,
        }, --comment

        -- vim surround
        { 'tpope/vim-surround',
                config = function()
                end,
        },
        -- enhance '.' for surround
        { 'tpope/vim-repeat',
                config = function()
                end,
        },
        --lastplace
        { 'ethanholz/nvim-lastplace',
                config = function()
                        require 'nvim-lastplace'.setup {
                                lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
                                lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
                                lastplace_open_folds = true
                        }
                end,

        },
        { 'folke/todo-comments.nvim',
                config = function()
                        require("Miku-vim.plugin.conf.todo")
                end, }, --TODO:

        --easy motion
        { 'ggandor/leap.nvim',
                config = function()

                        require('leap').opts.safe_labels = { 'f', 'e', 'j', 'k', 'i', 'n', 'c', 'w', 'r', 'o', 'a', 's',
                                'd', 't', 'g', 'v', 'm',
                                'l',
                                'q', 'x', 'b' }
                end,
        },
        { "akinsho/toggleterm.nvim", version = '*',

                config = function()
                        require("Miku-vim.plugin.conf.toggleterm")
                end,

        },
        { "nvim-neo-tree/neo-tree.nvim", branch = "v2.x",
                dependencies = "MunifTanjim/nui.nvim", --for neotree
                config = function()
                        require("Miku-vim.plugin.conf.neotree")
                end,
        },
        --   { "norcalli/nvim-colorizer.lua" }, -- show color


        --leetcode
        { 'ianding1/leetcode.vim',
                config = function()
                        vim.g.leetcode_browser = 'chrome'
                        vim.g.leetcode_solution_filetype = 'rust'
                end,
                lazy = true,
        },
        { 'caenrique/nvim-maximize-window-toggle',
                lazy = true,
        },

}

return {

        --NOTE: theme
        { 'Th3Whit3Wolf/one-nvim' },
        { "sainnhe/edge" },
        { 'sonph/onehalf', },
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

        --NOTE: UI
        { 'kyazdani42/nvim-web-devicons' }, --icons
        --lualine
        { 'nvim-lualine/lualine.nvim',
                config = function()
                        require('Miku-vim.plugin.conf.lualine')
                end

        },

        --PLUG:alpha
        { 'goolord/alpha-nvim',
                config = function()
                        require("Miku-vim.plugin.conf.alpha")
                end,
        },
        --PLUG:indentline
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
        },
        --PLUG:bufferline
        { 'akinsho/bufferline.nvim',
                version = "v2.*",
                config = function()
                        require("Miku-vim.plugin.conf.bufferline")
                end,
        },

        --PLUG:cmp
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
        --PLUG:snip,
        { 'saadparwaiz1/cmp_luasnip' },
        { 'L3MON4D3/LuaSnip' }, --snippet engine
        { 'rafamadriz/friendly-snippets' }, -- a bunch of snippets to

        --PLUG:LSP
        { 'neovim/nvim-lspconfig',
                dependencies = {
                        { 'williamboman/mason.nvim' }, -- install lsp server
                        { "jose-elias-alvarez/null-ls.nvim" }, -- for formatters and linters
                        { 'ray-x/lsp_signature.nvim', }, -- fun signature
                },
                config = function()
                        require("Miku-vim.plugin.conf.lsp")
                end,
        },


        --PLUG:Telescope,
        {
                'nvim-telescope/telescope.nvim',
                dependencies = {
                        { 'nvim-lua/plenary.nvim' },
                        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
                        { 'ahmedkhalf/project.nvim' }, --project
                },
                config = function()
                        require('Miku-vim.plugin.conf.telescope')
                end
        },


        --PLUG: treesitter
        { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate',

                dependencies =
                { 'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async' }, --for fold
                config = function()
                        require('Miku-vim.plugin.conf.treesitter')
                end,
        },

        --PLUG: autopairs
        { 'windwp/nvim-autopairs',
                config = function()
                        require("nvim-autopairs").setup()
                end,
        },

        --PLUG: comment
        { 'numToStr/Comment.nvim',
                config = function()
                        require("Comment").setup()
                end,
        }, --comment


        --PLUG: vim surround
        { 'tpope/vim-surround',
                config = function()
                end,
        },
        --PLUG: enhance '.' for surround
        { 'tpope/vim-repeat',
                config = function()
                end,
        },
        --PLUG: lastplace
        { 'ethanholz/nvim-lastplace',
                config = function()
                        require 'nvim-lastplace'.setup {
                                lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
                                lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
                                lastplace_open_folds = true
                        }
                end,

        },
        --PLUG: todo
        { 'folke/todo-comments.nvim',
                config = function()
                        require("Miku-vim.plugin.conf.todo")
                end, },

        --PLUG: easy motion
        { 'ggandor/leap.nvim',
                config = function()

                        require('leap').opts.safe_labels = { 'f', 'e', 'j', 'k', 'i', 'n', 'c', 'w', 'r', 'o', 'a', 's',
                                'd', 't', 'g', 'v', 'm',
                                'l',
                                'q', 'x', 'b' }
                end,
        },
        --PLUG: toggleterm
        { "akinsho/toggleterm.nvim", version = '*',

                config = function()
                        require("Miku-vim.plugin.conf.toggleterm")
                end,

        },
        --PLUG: neotree
        { "nvim-neo-tree/neo-tree.nvim", branch = "v2.x",
                dependencies = "MunifTanjim/nui.nvim", --for neotree
                config = function()
                        require("Miku-vim.plugin.conf.neotree")
                end,
        },
        -- { "norcalli/nvim-colorizer.lua" }, -- show color


        --PLUG: leetcode
        { 'ianding1/leetcode.vim',
                dependencies = 'caenrique/nvim-maximize-window-toggle',
                config = function()
                        vim.g.leetcode_browser = 'chrome'
                        vim.g.leetcode_solution_filetype = 'rust'
                end,
                cmd = "LeetCode",
        },

}

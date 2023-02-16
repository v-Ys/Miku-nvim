--NOTE:
local status_ok, packer = pcall(require, "packer")
if not status_ok then
        return
end

return packer.startup({
        function()
                -- provided appimage.
                use 'lewis6991/impatient.nvim'
                -- Packer can manage itself
                use 'wbthomason/packer.nvim'

                --theme
                use 'rmehri01/onenord.nvim'

                use 'Th3Whit3Wolf/one-nvim'
                use { 'dracula/vim', as = 'dracula' }
                use { 'sonph/onehalf', rtp = 'vim' }
                use { 'EdenEast/nightfox.nvim', lock = true }
                use { 'projekt0n/github-nvim-theme', tag = "v0.0.4" }
                use { "catppuccin/nvim", lock = true }
                use { "sainnhe/everforest", lock = true }
                use { "sainnhe/gruvbox-material", lock = true }
                use { "sainnhe/edge" }
                use 'folke/tokyonight.nvim'

                use 'kyazdani42/nvim-web-devicons' --icons
                use 'nvim-lualine/lualine.nvim' --lualine
                -- use 'glepnir/dashboard-nvim' --welcome
                use 'goolord/alpha-nvim'
                use 'lukas-reineke/indent-blankline.nvim' --indentline
                use { 'akinsho/bufferline.nvim', tag = "v2.*" }
                --cmp
                use 'hrsh7th/nvim-cmp'
                use 'hrsh7th/cmp-buffer' -- buffer completions
                use 'hrsh7th/cmp-path' -- path completions
                use 'hrsh7th/cmp-cmdline' -- cmdline completions
                use 'hrsh7th/cmp-nvim-lsp' --for lsp
                --snip
                use 'saadparwaiz1/cmp_luasnip'
                use 'L3MON4D3/LuaSnip' --snippet engine
                use 'rafamadriz/friendly-snippets' -- a bunch of snippets to use

                --LSP
                use 'neovim/nvim-lspconfig' -- enable LSP
                use 'williamboman/mason.nvim' --install lsp server
                use { "jose-elias-alvarez/null-ls.nvim" } -- , commit = "ff40739e5be6581899b43385997e39eecdbf9465" } -- for formatters and linters
                use 'ray-x/lsp_signature.nvim'


                --Telescope
                use 'nvim-telescope/telescope.nvim'
                use 'nvim-lua/plenary.nvim' --"telescope rely on it
                use 'ahmedkhalf/project.nvim' --project
                use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

                -- treesitter
                use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- commit = "8e763332b7bf7b3a426fd8707b7f5aa85823a5ac", } --better syntax highlight
                use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' } --fold

                use 'windwp/nvim-autopairs'
                use 'numToStr/Comment.nvim' --comment
                use 'tpope/vim-surround' -- vim surround
                use 'tpope/vim-repeat' -- enhance '.' for surround
                use 'ethanholz/nvim-lastplace' --lastplace
                use 'folke/todo-comments.nvim' --TODO:

                use 'ggandor/leap.nvim' --easy motion
                use { "akinsho/toggleterm.nvim", tag = '*', }
                use { "nvim-neo-tree/neo-tree.nvim", branch = "v2.x", }
                use "MunifTanjim/nui.nvim" --for neotree
                -- use "norcalli/nvim-colorizer.lua" -- show color

                --markdown
                use { 'iamcco/markdown-preview.nvim', ft = "markdown" }
                use { 'ybian/smartim', ft = "markdown", lock = true }
                use { 'dhruvasagar/vim-table-mode', ft = "markdown" }
                use { 'lervag/vimtex', ft = "tex" }

                use 'ianding1/leetcode.vim'
                use 'caenrique/nvim-maximize-window-toggle'
        end,
        --NOTE: Packer config
        config = {
            -- compile_path = vim.fn.stdpath "data" .. "/plugin",
            auto_clean = true,
            compile_on_sync = true,
            git = { clone_timeout = 6000 },
            display = {
                working_sym = "",
                error_sym = "",
                done_sym = "﫟",
                removed_sym = "",
                moved_sym = "",
                open_fn = function()
                        return require('packer.util').float({ border = 'rounded' })
                end
            }

        }
    })

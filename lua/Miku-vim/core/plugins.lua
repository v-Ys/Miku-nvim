--NOTE:
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

return require('packer').startup({ function()
    -- provided appimage.
    use 'lewis6991/impatient.nvim'
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    --theme
    use 'sthendev/mariana.vim'
    use 'Th3Whit3Wolf/one-nvim'
    use 'ishan9299/nvim-solarized-lua'
    use { 'dracula/vim', as = 'dracula' }
    use 'sainnhe/everforest'
    use 'sainnhe/gruvbox-material'
    use 'sainnhe/edge'
    use { 'sonph/onehalf', rtp = 'vim' }
    use 'EdenEast/nightfox.nvim'
    use { 'projekt0n/github-nvim-theme', tag = "v0.0.4" }
    use 'arzg/vim-colors-xcode'

    use 'kyazdani42/nvim-web-devicons' --icons
    use 'nvim-lualine/lualine.nvim' --lualine
    use 'glepnir/dashboard-nvim' --welcome
    use 'lukas-reineke/indent-blankline.nvim' --indentline

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
    use({ "jose-elias-alvarez/null-ls.nvim", commit = "ff40739e5be6581899b43385997e39eecdbf9465" }) -- for formatters and linters
    -- use 'jose-elias-alvarez/null-ls.nvim' --for format and spells

    --Telescope
    use 'nvim-telescope/telescope.nvim'
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = "make", }
    use 'nvim-lua/plenary.nvim' --"telescope rely on it
    use 'ahmedkhalf/project.nvim' --project

    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } --better syntax highlight
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' } --fold

    use 'windwp/nvim-autopairs'
    use 'numToStr/Comment.nvim' --comment
    use 'tpope/vim-surround' -- vim surround
    use 'tpope/vim-repeat' -- enhance '.' for surround
    use 'ethanholz/nvim-lastplace' --lastplace
    use 'folke/todo-comments.nvim' --TODO:
    use 'phaazon/hop.nvim' --easy motion


    use { "akinsho/toggleterm.nvim", tag = '*', }
    use { "nvim-neo-tree/neo-tree.nvim", branch = "v2.x", }
    use "MunifTanjim/nui.nvim" --for neotree
    -- use "norcalli/nvim-colorizer.lua" -- show color

end,
    --NOTE: Packer config
    config = {
        -- compile_path = vim.fn.stdpath "data" .. "/plugin",
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'rounded' })
            end
        }
    } })

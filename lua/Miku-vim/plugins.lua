--NOTE:
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

return require('packer').startup(function()
    -- provided appimage.
    use 'lewis6991/impatient.nvim'
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    --theme
    use 'sthendev/mariana.vim'
    use { 'projekt0n/github-nvim-theme', tag = "v0.0.4" }
    use 'Th3Whit3Wolf/one-nvim'
    use 'ishan9299/nvim-solarized-lua'
    use { 'dracula/vim', as = 'dracula' }
    use 'sainnhe/everforest'
    use 'sainnhe/gruvbox-material'
    use 'sainnhe/edge'
    use 'tomasiser/vim-code-dark'
    use { 'sonph/onehalf', rtp = 'vim' }
    use 'arzg/vim-colors-xcode'
    use 'liuchengxu/space-vim-theme'

    use 'kyazdani42/nvim-web-devicons' --icons
    use 'nvim-lualine/lualine.nvim' --lualine
    use 'glepnir/dashboard-nvim' --welcome
    use 'lukas-reineke/indent-blankline.nvim' --indentline
    --cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer' -- buffer completions
    use 'hrsh7th/cmp-path' -- path completions
    use 'hrsh7th/cmp-cmdline' -- cmdline completions
    use 'hrsh7th/cmp-nvim-lsp'
    --snip
    use 'saadparwaiz1/cmp_luasnip'
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

    --LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer

    -- treesitter
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' } --fold

    use { "windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end } --autopairs
    use 'numToStr/Comment.nvim' --comment
    use 'tpope/vim-surround' -- vim surround
    use 'tpope/vim-repeat' -- enhance '.' for surround
    use 'folke/todo-comments.nvim' --TODO:
    use 'iamcco/markdown-preview.nvim' --markdown preview
    use 'ethanholz/nvim-lastplace' --lastplace

    --Telescope
    use "nvim-telescope/telescope.nvim"
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make", }
    use "nvim-telescope/telescope-file-browser.nvim" --files
    use "nvim-lua/plenary.nvim" --"telescope rely on it
    use 'ahmedkhalf/project.nvim' --project

    -- use "norcalli/nvim-colorizer.lua" -- show color

end)

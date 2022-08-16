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
    use 'morhetz/ruvbox'
    use 'arcticicestudio/nord-vim'
    --icons
    use 'kyazdani42/nvim-web-devicons'
    --lualine
    use 'nvim-lualine/lualine.nvim'
    --start
    use 'glepnir/dashboard-nvim'
    --indentline
    use 'lukas-reineke/indent-blankline.nvim'


    --cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer' -- buffer completions
    use 'hrsh7th/cmp-path' -- path completions
    use 'hrsh7th/cmp-cmdline' -- cmdline completions
    use 'hrsh7th/cmp-nvim-lsp'
    use 'ahmedkhalf/project.nvim' --project
    --snip
    use 'saadparwaiz1/cmp_luasnip'
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use


    --LSP
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "ray-x/lsp_signature.nvim" -- show funct


    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }


    --autopairs
    use 'windwp/nvim-autopairs'
    --comment
    use 'numToStr/Comment.nvim'
    -- vim surround
    use 'tpope/vim-surround'
    use 'tpope/vim-repeat'
    --bookmarks
    use 'MattesGroeger/vim-bookmarks'
    --TODO
    use 'folke/todo-comments.nvim'
    --markdown preview
    use 'iamcco/markdown-preview.nvim'


    --Telescope
    use "nvim-telescope/telescope.nvim"
    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "make",
    }
    use "tom-anders/telescope-vim-bookmarks.nvim"
    use "nvim-telescope/telescope-file-browser.nvim"
    --"telescope rely on it
    use "nvim-lua/plenary.nvim"


    --files
    use {
        'kyazdani42/nvim-tree.lua',
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

end)
--NOTE: boring

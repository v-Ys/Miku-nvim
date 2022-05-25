return require('packer').startup(function()
    -- provided appimage.
    use 'lewis6991/impatient.nvim'
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --theme
    use { 'sthendev/mariana.vim', run='make PRIORITY=105' }
    use {
    "projekt0n/github-nvim-theme",
    tag = "v0.0.4",
    }
    use 'ishan9299/nvim-solarized-lua'
    use { 'dracula/vim', as = 'dracula' }
    use 'kristijanhusak/vim-hybrid-material'
    --icons
    use  'kyazdani42/nvim-web-devicons'
    --lualine
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    --start
    use 'glepnir/dashboard-nvim'



    --cmp
    use {
        "hrsh7th/nvim-cmp",
      } 
      use "hrsh7th/cmp-buffer" -- buffer completions
      use "hrsh7th/cmp-path" -- path completions
      use "hrsh7th/cmp-cmdline" -- cmdline completions
      use "hrsh7th/cmp-nvim-lsp"
      use "f3fora/cmp-spell" -- spell check
    

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
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- vim surround 
    use "tpope/vim-surround" 
    --indentline
    use "lukas-reineke/indent-blankline.nvim"
    --bookmarks
    use "MattesGroeger/vim-bookmarks"
    --TODO 
    use "folke/todo-comments.nvim"


    --Telescope
    use {
        "nvim-telescope/telescope.nvim",
    }
      use {
            "nvim-telescope/telescope-fzf-native.nvim",
            run = "make",
        }
      use "nvim-telescope/telescope-live-grep-raw.nvim"
      use "tom-anders/telescope-vim-bookmarks.nvim"


    --files 
    use {
    'kyazdani42/nvim-tree.lua',
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use 'kevinhwang91/rnvimr'

    
    --"telescopeyill依赖
    use "nvim-lua/plenary.nvim"
    --vimwiki----
    use 'vimwiki/vimwiki'


end)
--NOTE: boring





vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
    use 'Wansmer/treesj'
    use "akinsho/toggleterm.nvim"
    use 'ThePrimeagen/vim-be-good'
    use 'feline-nvim/feline.nvim'
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    use 'github/copilot.vim'
    use 'yamatsum/nvim-cursorline'
    use 'Yggdroot/indentLine'
    use 'lewis6991/gitsigns.nvim'    -- use 'airblade/vim-gitgutter'
    use 'wbthomason/packer.nvim'
    use "nvim-lua/plenary.nvim"
    use "moll/vim-bbye"
    use 'christoomey/vim-tmux-navigator'
    use "szw/vim-maximizer"
    use "tpope/vim-repeat"
    use { "bluz71/vim-nightfly-colors", as = "nightfly" }
    use {
        'numToStr/Comment.nvim',
        config = function()
        require('Comment').setup()
      end
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-telescope/telescope-project.nvim'
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    use {
     'nvim-lualine/lualine.nvim',
     requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
      -- autocompletion
    use("hrsh7th/nvim-cmp") -- completion plugin
    use("hrsh7th/cmp-buffer") -- source for text in buffer
    use("hrsh7th/cmp-path") -- source for file system paths
    use("hrsh7th/cmp-cmdline") -- source for file system paths
    use("saadparwaiz1/cmp_luasnip") -- for autocompletion
    use ("hrsh7th/cmp-nvim-lsp")


    -- snippets
    use("L3MON4D3/LuaSnip") -- snippet engine
    use("rafamadriz/friendly-snippets") -- useful snippets

    -- Lsp Server
    use { "neovim/nvim-lspconfig", commit = "f11fdff7e8b5b415e5ef1837bdcdd37ea6764dda" } -- enable LSP
    use { "williamboman/mason.nvim", commit = "c2002d7a6b5a72ba02388548cfaf420b864fbc12"} -- simple to use language server installer
    use { "williamboman/mason-lspconfig.nvim", commit = "0051870dd728f4988110a1b2d47f4a4510213e31" }

  --
  -- -- -- managing & installing lsp servers, linters & formatters
  -- use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
  -- use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig
  -- --
  -- -- -- configuring lsp servers
  -- use("neovim/nvim-lspconfig") -- easily configure language servers
  -- use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
  -- use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion
  --
  -- --   -- formatting & linting
  -- use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
  -- use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls
  --
   -- auto closing
  use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
  -- use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

  -- -- git integration
  -- use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side
  -- hardtime to develop habbits 
  use "m4xshen/hardtime.nvim"
  use 'folke/flash.nvim'
end)

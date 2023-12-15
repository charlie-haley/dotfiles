require("lazy").setup({
  {'nvim-lua/popup.nvim'},
  {'nvim-lua/plenary.nvim'},
  {'nvim-tree/nvim-web-devicons'},

  {
    'ms-jpq/coq_nvim', 
    branch = 'coq',
    init = function()
      require('config.coq')
    end,
  },
  {'ms-jpq/coq.artifacts', branch = 'artifacts'},
  {'ms-jpq/coq.thirdparty', branch = '3p'},

  { 
    'neovim/nvim-lspconfig',
    config = function()
      require('config.lsp')
    end,
  },
  
  { 
    'sindrets/diffview.nvim', 
    dependencies = {'nvim-lua/plenary.nvim'},
    config = function()
      require('config.diffview')
    end,
  },

  {
    'shaunsingh/solarized.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    priority = 1000,
    config = function()
      require('config.solarized')
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    event = "VimEnter",
    dependencies = { 
      'nvim-tree/nvim-web-devicons',
      'shaunsingh/solarized.nvim'
    },
    config = function()
      require('config.lualine')
    end,
  },

  {
    'nvim-telescope/telescope.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      require('config.telescope')
    end,
  },

  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('config.bufferline')
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("config.treesitter")
    end,
  },

  {
    "numToStr/Comment.nvim",
    config = function()
      require("config.comment")
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("config.nullls")
    end,
  },

  {
    "olimorris/persisted.nvim",
    config = function()
      require('config.persisted')
    end,
  },

  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('config.nvim-tree')
    end,
  },

  {
    'OmniSharp/omnisharp-vim',
  },

  {
    'towolf/vim-helm',
  },

  {
    "rest-nvim/rest.nvim",
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      require('config.rest')
    end,
  },
})


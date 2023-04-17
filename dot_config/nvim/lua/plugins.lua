require("lazy").setup({
  {'nvim-lua/popup.nvim'},
  {'nvim-lua/plenary.nvim'},
  {'nvim-tree/nvim-web-devicons'},

  {'ms-jpq/coq_nvim', branch = 'coq'},
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
    tag = "0.1.1",
    dependencies = 'nvim-lua/plenary.nvim',
    config = function()
      require('config.telescope')
    end,
  },

  {
    'akinsho/bufferline.nvim',
    tag = "v3.7.0",
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

  -- Session management
  {
    "olimorris/persisted.nvim",
    config = function()
      require('config.persisted')
    end,
  },

  -- Plugin for filesystem tree
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('config.nvim-tree')
    end,
  },
})


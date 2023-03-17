local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

-- Install your plugins here
return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Have packer manage itself
  use 'nvim-lua/popup.nvim' -- An implementation of the Popup API from vim in Neovim
  use 'nvim-lua/plenary.nvim' -- Useful lua functions used ny lots of plugins
  use 'nvim-tree/nvim-web-devicons'

  use {
    'ms-jpq/coq_nvim',
    branch = 'coq',
    config = function()
      require('config.coq')
    end,
  }

  use {
    'ms-jpq/coq.artifacts',
    branch = 'artifacts',
    after = 'coq_nvim',
  }

  use {
    'ms-jpq/coq.thirdparty',
    branch = '3p',
    after = 'coq_nvim',
  }

  use {
    'shaunsingh/solarized.nvim',
    event = "VimEnter",
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('config.solarized')
    end,
  }

  use { 
    'sindrets/diffview.nvim', 
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('config.diffview')
    end,
  }

  use {
    'nvim-lualine/lualine.nvim',
    event = "VimEnter",
    requires = { 
      'nvim-tree/nvim-web-devicons',
      'shaunsingh/solarized.nvim'
    },
    config = function()
      require('config.lualine')
    end,
  }

  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.x',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('config.telescope')
    end,
  }

  use ({
    'akinsho/bufferline.nvim',
    tag = 'v3.*', 
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('config.bufferline')
    end,
  })

  use({
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("config.treesitter")
    end,
  })

	use({
    "fatih/vim-go",
		run = ":GoUpdateBinaries"
	})

  -- Session management
  use({
    "olimorris/persisted.nvim",
    config = function()
      require('config.persisted')
    end,
  })

  -- Plugin for filesystem tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('config.nvim-tree')
    end,
   }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)

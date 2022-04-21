-- Bootstrapping
local fn = vim.fn
-- https://github.com/wbthomason/packer.nvim/issues/718
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- Load packer
vim.cmd([[packadd packer.nvim]])
local packer = require('packer')

-- Change some defaults
-- https://github.com/NTBBloodbath/doom-nvim/blob/main/lua/doom/modules/init.lua
packer.init({
    git = {
      clone_timeout = 300,
      subcommands = {
        -- Prevent packer from downloading all branches metadata to reduce cloning cost
        -- for heavy size plugins like plenary (removed the '--no-single-branch' git flag)
        install = "clone --depth %i --progress",
      },
    },
    display = {
      open_fn = use_floating_win_packer and function()
        return require("packer.util").float({border = "single"})
      end or nil,
    },
    profile = {
      enable = true,
    }
})

return packer.startup(function(use)
    -- My plugins here
    use {
      'wbthomason/packer.nvim',
      opt = true
    }

    use {
      {
        'nvim-telescope/telescope.nvim',
        requires = {
          'nvim-lua/popup.nvim',
          'nvim-lua/plenary.nvim',
          'nvim-telescope/telescope-live-grep-raw.nvim',
          'nvim-telescope/telescope-project.nvim'
        },
        config = require("config.telescope")
      },
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}
    }

    use {
      "folke/which-key.nvim",
      config = require("config.which-key")
    }

    use {
      'folke/tokyonight.nvim',
      config = require('config.theme')}

    use {
      'nvim-lualine/lualine.nvim',
      config = require("config.lualine")
    }

    use {
      "akinsho/bufferline.nvim",
      config = require("config.bufferline"),
      event = "BufWinEnter"
    }

    use "kyazdani42/nvim-web-devicons"

    use 'romainl/vim-cool'

    use {
      'hkupty/iron.nvim',
      config = require('config.iron')
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      packer.sync()
    end
end)

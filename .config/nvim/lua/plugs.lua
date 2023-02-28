return require('packer').startup(function(use)

	use {
  		'nvim-tree/nvim-tree.lua', -- file navigator
  		requires = {'nvim-tree/nvim-web-devicons'}, -- navigator icons
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	use {
		'CRAG666/code_runner.nvim',
		run = 'nvim-lua/plenary.nvim'
	}

	end,
{
  config = {
    package_root = '/home/cesar/.local/share/nvim' .. '/site/pack'
  }
})

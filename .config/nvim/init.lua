-- LEADER
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plugs')      -- Plugins

-- PLUGINS
require('nvim-tree').setup{}

require('code_runner').setup({
  -- put here the commands by filetype
  filetype = {
		java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
		python = "python3 -u",
		rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
		c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt && rm $dir/$fileNameWithoutExt"
	},
})

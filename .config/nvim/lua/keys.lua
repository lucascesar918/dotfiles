local map = vim.api.nvim_set_keymap

-- Toggle nvim-tree
map('n', '<C-n>', [[:Neotree toggle]] .. '<CR>', {})

-- Search using Telescope
map('n', 'ff', [[:Telescope find_files]] .. '<CR>', {})

-- Run using CodeRunner
map('n', 'ç', [[:RustRun!]] .. '<CR>', {})

-- Comment Line
map('n', '<C- >', [[:CommentToggle]] .. '<CR>', {})
map('v', '<C- >', [[:'<,'>CommentToggle]] .. '<CR>', {})

-- Save file
map('n', '<C-S>', [[:w]] .. '<CR>', {})

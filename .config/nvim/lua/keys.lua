local map = vim.api.nvim_set_keymap

-- Toggle nvim-tree
map('n', '<C-n>', [[:NvimTreeToggle]] .. '<CR>', {})

-- Search using Telescope
map('n', 'ff', [[:Telescope find_files]] .. '<CR>', {})

-- Run using CodeRunner
map('n', 'ç', [[:RunCode<CR>]] .. '<CR>', {})

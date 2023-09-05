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

-- Toggle Terminal
map('n', '<C-A>', [[:ToggleTerm dir=$PWD]] .. '<CR>', {})
map('t', '<C-A>', [[:ToggleTerm]] .. '<CR>', {})
map('t', '<esc>', [[<C-\><C-n>]], {})
-- map('t', 'jk', [[<C-\><C-n>]], {})
-- map('t', '<C-h>', [[<Cmd>wincmd h<CR>]], {})
-- map('t', '<C-j>', [[<Cmd>wincmd j<CR>]], {})
-- map('t', '<C-k>', [[<Cmd>wincmd k<CR>]], {})
-- map('t', '<C-l>', [[<Cmd>wincmd l<CR>]], {})
-- map('t', '<C-w>', [[<C-\><C-n><C-w>]], {})

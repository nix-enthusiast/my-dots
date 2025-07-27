local o = vim.o -- like "set"
local g = vim.g -- global variables
local cmd = vim.cmd

o.number = true
--o.noshowmode = true
o.cursorline = true
g.lightline = { colorscheme = 'one' }
o.mouse = "a"
g.mapleader = " "
g.ranger_map_keys = 0
g.rustfmt_autosave = 1

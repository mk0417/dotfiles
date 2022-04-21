local g = vim.g
local cmd = vim.cmd

-- Leader/local leader
g.mapleader = " "
g.maplocalleader = ";"

-- Working directory respects to opened file
-- cmd [[autocmd BufEnter * lcd %:p:h]]

cmd [[autocmd BufRead,BufNewFile *.py setlocal textwidth=80 colorcolumn=80]]

require('plugins')
require('defaults')
require('keybindings')

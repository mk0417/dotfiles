local setkey = require('utils')
local nnoremap = setkey.nnoremap
local inoremap = setkey.inoremap
local vnoremap = setkey.vnoremap
local tnoremap = setkey.tnoremap
local cnoremap = setkey.cnoremap

-- Package manager
nnoremap('<leader>pi', ':PackerInstall<CR>')
nnoremap('<leader>ps', ':PackerSync<CR>')
nnoremap('<leader>pc', ':PackerClean<CR>')

-- fd to Esc
inoremap("fd", "<Esc>")
vnoremap("fd", "<Esc>")

-- Files, buffers and tabs
nnoremap('<leader>fs', ":w<CR>")
nnoremap('<leader>ff', ":e<Space>")
nnoremap('<leader>bo', ':BufferOnly<CR>:bn<CR>:bd<CR>') -- delete all other buffers
nnoremap('<leader>bd', ':bdelete<CR>') -- delete current buffer
nnoremap('<leader>bD', ':bdelete!<CR>') -- force delete current buffer
nnoremap('<leader>bn', ':bn<CR>') -- next buffer
nnoremap('<leader>bp', ':bp<CR>') -- previous buffer

nnoremap('<leader>tf', ':tabf<Space>') -- open {file} in new tab
nnoremap('<leader>te', ':tabe<CR>') -- open an empty tab
nnoremap('<leader>to', ':tabonly<CR>') -- close all other tabs
nnoremap('<leader>td', ':tabclose<CR>') -- close current tab
nnoremap('<leader>tD', ':tabclose!<CR>') -- force close current tab
nnoremap('<leader>tn', 'gt') -- next tab
nnoremap('<leader>tp', 'gT') -- previous tab

-- Windows
nnoremap('<leader>wv', ':vs<CR><C-w>l') -- open {file} from homoe directory and split window vertically
nnoremap('<leader>ws', ':sp<CR><C-w>j') -- open {file} from homoe directory and split window horizontally
nnoremap('<leader>wV', ':vnew<CR><C-w>x<C-w>l') -- open an empty buffer and split window vertically
nnoremap('<leader>wS', ':new<CR><C-w>x<C-w>j') -- open an empty buffer and split window horizontally
nnoremap('<leader>wh', '<C-w>h') -- focus on the window on the left
nnoremap('<leader>wl', '<C-w>l') -- focus on the window on the right
nnoremap('<leader>wj', '<C-w>j') -- focus on the window on the bottom
nnoremap('<leader>wk', '<C-w>k') -- focus on the window on the top
nnoremap('<leader>wa', '<C-w>x') -- swap window
nnoremap('<leader>wd', '<C-w>q') -- close window
nnoremap('<leader>wH', '<C-w>H') -- move window to left
nnoremap('<leader>wL', '<C-w>L') -- move window to right
nnoremap('<leader>wJ', '<C-w>J') -- move window to below
nnoremap('<leader>wK', '<C-w>K') -- move window to top
tnoremap('<leader>wH', '<C-\\><C-n><C-w>H') -- move window to left
tnoremap('<leader>wL', '<C-\\><C-n><C-w>L') -- move window to right
tnoremap('<leader>wJ', '<C-\\><C-n><C-w>J') -- move window to below
tnoremap('<leader>wK', '<C-\\><C-n><C-w>K') -- move window to top

-- Search and replace
nnoremap('gor', ':%s/')
vnoremap('gor', ':s/')

-- Terminal buffer
tnoremap('<C-o>', '<C-\\><C-n>') -- switch to normal mode in terminal
tnoremap('<C-h>', '<C-\\><C-n><C-w>h') -- focus on left window from terminal buffer
tnoremap('<C-l>', '<C-\\><C-n><C-w>l') -- focus on right window from terminal buffer
tnoremap('<C-j>', '<C-\\><C-n><C-w>j') -- focus on bottom window from terminal buffer
tnoremap('<C-k>', '<C-\\><C-n><C-w>k') -- focus on top window from terminal buffer

-- Movement
nnoremap(';a', '0') -- move to begining of line in normal mode
nnoremap(';e', '$') -- move to end of line in normal mode
vnoremap(';a', '0') -- move to begining of line in visual mode
vnoremap(';e', '$h') -- move to end of line in visual mode
inoremap('<C-a>', '<Esc>I') -- move to begining of line in insert mode
inoremap('<C-e>', '<Esc>A') -- move to end of line in insert mode
inoremap('<C-f>', '<right>') -- move cursor forward in insert mode
inoremap('<C-b>', '<left>') -- move cursor backward in insert mode
cnoremap('<C-f>', '<right>') -- move cursor forward in command mode
cnoremap('<C-b>', '<left>') -- move cursor backward in command mode

-- Quit
nnoremap('<leader>qq', ":q<CR>")
nnoremap('<leader>qf', ":q!<CR>")

local opt = vim.o

-- Don't hide quotes in markdown
opt.conceallevel = 0
opt.cmdheight = 1
opt.pumheight = 10
opt.showmode = false
-- Always show tabline
opt.showtabline = 2
opt.title = true
-- Use true colors, required for some plugins
opt.termguicolors = true
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = 'yes'
vim.wo.cursorline = true
opt.hlsearch = false
-- Ignore case when using lowercase in search
opt.ignorecase = true
-- But don't ignore it when using upper case
opt.smartcase = true
opt.smarttab = true
opt.smartindent = true
-- Convert tabs to spaces.
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.splitbelow = true
opt.splitright = true
-- Minimum offset in lines to screen borders
opt.scrolloff = 6
opt.sidescrolloff = 8
opt.mouse = 'a'
-- Do not save when switching buffers
opt.hidden = true
opt.fileencoding = "utf-8"
opt.spell = false
opt.spelllang = "en_uk"
opt.completeopt = "menuone,noinsert,noselect"
-- Display auto-complete in Command Mode
opt.wildmode = "longest,full"
-- Delay until write to Swap and HoldCommand event
opt.updatetime = 300

-- Disable inline error messages
vim.diagnostic.config {
  virtual_text = false,
  underline = false, -- Keep error underline
  signs = true -- Keep gutter signs
}

local setkey = {}
function setkey.map(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs)
end

function setkey.noremap(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap = true})
end

function setkey.exprnoremap(mode, lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, {noremap = true, silent = true, expr = true})
end

function setkey.nmap(lhs, rhs)
  setkey.map('n', lhs, rhs)
end

function setkey.xmap(lhs, rhs)
  setkey.map('x', lhs, rhs)
end

function setkey.nnoremap(lhs, rhs)
  setkey.noremap('n', lhs, rhs)
end

function setkey.vnoremap(lhs, rhs)
  setkey.noremap('v', lhs, rhs)
end

function setkey.xnoremap(lhs, rhs)
  setkey.noremap('x', lhs, rhs)
end

function setkey.inoremap(lhs, rhs)
  setkey.noremap('i', lhs, rhs)
end

function setkey.tnoremap(lhs, rhs)
  setkey.noremap('t', lhs, rhs)
end

function setkey.cnoremap(lhs, rhs)
  setkey.noremap('c', lhs, rhs)
end

function setkey.exprnnoremap(lhs, rhs)
  setkey.exprnoremap('n', lhs, rhs)
end

function setkey.exprinoremap(lhs, rhs)
  setkey.exprnoremap('i', lhs, rhs)
end
return setkey

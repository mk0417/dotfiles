return function()
  local g = vim.g
  local cmd = vim.cmd
  local iron = require('iron')

  -- g.iron_map_defaults = 0

  -- g:iron_repl_open_cmd = 'topright vertical 100 split'

  iron.core.set_config {
    iron_map_defaults = 0,
    repl_open_cmd = "rightbelow vertical 100 split",
    preferred = {
      python  = 'ipython'
    }
  }

  cmd [[autocmd Filetype python nnoremap ;jj :IronRepl<cr><Esc>]]
  cmd [[autocmd Filetype python nnoremap ;jR :IronRestart<cr><Esc>]]
  cmd [[autocmd Filetype python vmap ;jr <Plug>(iron-visual-send)]]
  cmd [[autocmd Filetype python nmap ;jr <Plug>(iron-send-line)]]
  cmd [[autocmd Filetype python nmap ;jI <plug>(iron-interrupt)]]
  cmd [[autocmd Filetype python nmap ;jq <Plug>(iron-exit)]]
  cmd [[autocmd Filetype python nmap ;jc <Plug>(iron-clear)]]
end

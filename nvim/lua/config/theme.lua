return function()
  local g = vim.g
  local cmd = vim.cmd

  g.tokyonight_style = "night"
  g.tokyonight_sidebars = {"qf", "vista_kind", "terminal", "packer"}
  g.tokyonight_italic_keywords = false
  g.tokyonight_colors = {hint = "orange", error = "#f08080"}

  -- Load the colorscheme
  cmd [[colorscheme tokyonight]]
end

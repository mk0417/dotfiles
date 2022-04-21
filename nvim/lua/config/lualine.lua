return function()
  require('lualine').setup(
    {
      options = {
        theme = "tokyonight",
        icons_enabled = true,
        component_separators = {left = '', right = ''},
        section_separators = {left = '', right = ''}
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff'},
        lualine_c = {'filename', 'filetype'},
        lualine_x = {'encoding'},
        lualine_y = {'progress'},
        lualine_z = {
          {function () return '' end},
          {'location'}
        }
      }
                          })
end

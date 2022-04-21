return function()
  local setkey = require('utils')
  local nnoremap = setkey.nnoremap

  require('telescope').setup(
    {
      defaults = {
        preview = false,
        sorting_strategy = "ascending",
        layout_config = {
          horizontal ={
            height = 30,
            prompt_position = "top"
          }
        }
      },
      pickers = {
        find_files = {
          theme = "ivy"
        },
        oldfiles = {
          theme = "ivy"
        }
      },
      extensions = {
        fzf = {
          -- false will only do exact matching
          fuzzy = true,
          -- override the generic sorter
          override_generic_sorter = true,
          -- override the file sorter
          override_file_sorter = true,
          -- the default case_mode is "smart_case"
          -- or "ignore_case" or "respect_case"
          case_mode = "smart_case"
        }
      }
                            })

  require('telescope').load_extension('fzf')
  require('telescope').load_extension('live_grep_raw')
  require('telescope').load_extension('project')

  nnoremap('<leader>fr', ':Telescope oldfiles<CR>')
  nnoremap('<leader>sf', ':Telescope find_files<CR>')
  nnoremap('<leader>sd', ':Telescope live_grep<CR>')
  nnoremap('<leader>sD', ':Telescope grep_string<CR>')
  nnoremap('<leader>sr', ':Telescope live_grep_raw<CR>')
  nnoremap('<leader>pp', ':Telescope project<CR>')

  -- Working directory should respect to current file
  nnoremap('<leader>lf', ":lua require('telescope.builtin').find_files({cwd=require('telescope.utils').buffer_dir()})<CR>")
  nnoremap("<leader>ld", ":lua require('telescope.builtin').live_grep({cwd=require('telescope.utils').buffer_dir()})<CR>")
  nnoremap("<leader>lD", ":lua require('telescope.builtin').grep_string({cwd=require('telescope.utils').buffer_dir()})<CR>")
  nnoremap("<leader>lr", ":lua require('telescope').extensions.live_grep_raw.live_grep_raw({cwd=require('telescope.utils').buffer_dir()})<CR>")
end

return function()
  local wk = require("which-key")
  local presets = require("which-key.plugins.presets")

  wk.setup({
      plugins = {
        marks = false,
        registers = false,
        presets = {
          operators = false,
          motions = true,
          text_objects = true,
          windows = true,
          nav = true,
          z = true,
          g = true,
        }
      },
      operators = {
        d = "Delete",
        c = "Change",
        y = "Yank (copy)",
        ["g~"] = "Toggle case",
        ["gu"] = "Lowercase",
        ["gU"] = "Uppercase",
        [">"] = "Indent right",
        ["<lt>"] = "Indent left",
        ["zf"] = "Create fold",
        ["!"] = "Filter though external program"
      },
      icons = {
        breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
        separator = "➜", -- symbol used between a key and it's label
        group = "+" -- symbol prepended to a group
      },
      key_labels = {
        ["<space>"] = "SPC",
        ["<cr>"] = "RET",
        ["<tab>"] = "TAB"
      },
      window = {
        padding = {0, 0, 0, 0}, -- extra window padding [top, right, bottom, left]
        border = "none",
        position = "bottom"
      },
      layout = {
        height = {min = 1, max = 10}, -- min and max height of the columns
        spacing = 3,
        align = "left"
      },
      ignore_missing = true,
      hidden = {
        "<silent>",
        "<Cmd>",
        "<cmd>",
        "<Plug>",
        "call",
        "lua",
        "^:",
        "^ "
      }, -- hide mapping boilerplate
      show_help = true, -- show help message on the command line when the popup is visible
      triggers = "auto" -- automatically setup triggers
  })

  local mappings = {
    ["f"] = {
      name = "+file",
      ["f"] = {"Find files"},
      ["r"] = {"Recently opened files"},
      ["s"] = {"Save file"}
    },
    ["b"] = {
      name = "+buffer",
      ["o"] = {"Delete other buffers"},
      ["d"] = {"Delete current buffer"},
      ["D"] = {"Force delete current buffer"},
      ["n"] = {"Next buffer"},
      ["p"] = {"Previous buffer"}
    },
    ["t"] = {
      name = "+tab",
      ["f"] = {"Open in new tab"},
      ["e"] = {"Open empty tab"},
      ["o"] = {"Delete other tabs"},
      ["d"] = {"Delete current tab"},
      ["D"] = {"Force delete current tab"},
      ["n"] = {"Next tab"},
      ["p"] = {"Previous tab"}
    },
    ["w"] = {
      name = "+window",
      ["v"] = {"Split vertically"},
      ["s"] = {"Split horizontally"},
      ["V"] = {"Split empty vertically"},
      ["S"] = {"Split empty horizontally"},
      ["h"] = {"Go to left window"},
      ["l"] = {"Go to right window"},
      ["j"] = {"Go to below window"},
      ["k"] = {"Go to top window"},
      ["a"] = {"Swap window"},
      ["d"] = {"Delete window"},
      ["p"] = {"Previous tab"},
      ["H"] = {"Move to left"},
      ["L"] = {"Move to right"},
      ["J"] = {"Move to below"},
      ["K"] = {"Move to top"}
    },
    ["s"] = {
      name = "+search global",
      ["d"] = {"Grep"},
      ["D"] = {"Grep at point"},
      ["f"] = {"Search file"},
      ["r"] = {"Grep+"}
    },
    ["l"] = {
      name = "+search local",
      ["d"] = {"Grep"},
      ["D"] = {"Grep at point"},
      ["f"] = {"Search file" },
      ["r"] = {"Grep+"}
    },
    ['p'] = {
      name = '+projects and packages',
      ['p'] = {'Switch project'},
      ['i'] = {'Install packages'},
      ['s'] = {'Sync packages'},
      ['c'] = {'Clean packages'}
    },
    ["q"] = {
      name = "+quit",
      ["q"] = {"Quit"},
      ["f"] = {"Force quit"}
    }
  }

  local local_mappings = {
    ["j"] = {
      name = "+REPL",
      ["j"] = {"Start REPL"},
      ["R"] = {"Restart REPL"},
      ["r"] = {"Eval selection or line"},
      ["I"] = {"Intercept REPL"},
      ["c"] = {"Clear REPL"},
      ["q"] = {"Quit REPL"}
    }
  }

  wk.register(mappings, {prefix = "<leader>"})
  wk.register(local_mappings, {prefix = "<localleader>"})
end

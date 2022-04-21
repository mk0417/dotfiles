return function()
  require("bufferline").setup({
      options = {
        numbers = "ordinal",
        indicator_icon = "▎",
        buffer_close_icon = "",
        modified_icon = "●",
        close_icon = "",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 20,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        tab_size = 25,
        offsets = {
          {
            filetype = "packer",
            text = "Plugins manager",
            text_align = "center"
          },
        },
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "thick",
        enforce_regular_tabs = true,
        always_show_bufferline = true,
        sort_by = "directory"
      }
                             })
end

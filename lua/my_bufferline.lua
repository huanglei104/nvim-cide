require("bufferline").setup{
    options = {
        numbers = "both",
	diagnostics = "nvim_lsp",
	diagnostics_update_in_insert = true,
	show_buffer_close_icons = false,
	show_close_icon = false,
        offsets = {{filetype = "NvimTree"}},
    }
}

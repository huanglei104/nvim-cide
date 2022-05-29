require("bufferline").setup{
	options = {
		numbers = "ordinal",
		show_close_icon = false,
		show_buffer_close_icons = false,
		show_tab_indicators = true,
		diagnostics = "nvim_lsp",
		diagnostics_update_in_insert = true,
		separator_style = "think",
		offsets = {{
			filetype = "NvimTree",
			text = "File Explorer",
			highlight = "Directory",
			text_align = "center"
		}}
	}
}

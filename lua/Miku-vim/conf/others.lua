--NOTE:

--comment
 require('Comment').setup()

--indentline
vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
	"help",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
}

require("indent_blankline").setup {
    show_end_of_line = true,
}
 

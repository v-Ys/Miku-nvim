lua <<EOF
--autopairs
require('nvim-autopairs').setup()

--comment
require('Comment').setup()

--indentline
vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
}
vim.opt.list = true
vim.opt.listchars:append("eol:↴")

require("indent_blankline").setup {
    show_end_of_line = true,
}




--TODO-comments
local status_ok, todo_comments = pcall(require, "todo-comments")
if not status_ok then
  vim.notify("todo-comments not found!")
	return
end

todo_comments.setup(
    {
        keywords = {
            -- alt ： 别名
            FIX = {
                icon = " ",
                color = "#C0392B",
                alt = {"FIXME", "BUG", "FIXIT", "ISSUE", "!"}
            },
            TODO = {icon = " ", color = "#AF7AC5"},
            HACK = {icon = " ", color = "#7C3AED"},
            WARN = {icon = " ", color = "#E74C3C", alt = {"WARNING", "XXX"}},
            PERF = {icon = " ", color = "#5DADE2", alt = {"OPTIM", "PERFORMANCE", "OPTIMIZE"}},
            NOTE = {icon = " ", color = "#10B981", alt = {"INFO"}}
        }
    }
)


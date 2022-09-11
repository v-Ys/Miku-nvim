--NOTE:
local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
	return
end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
    -- component_separators = { left = "", right = "" },
    -- section_separators = { left = "", right = "" },
  },
   sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
}

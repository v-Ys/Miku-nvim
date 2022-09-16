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
        lualine_a = { 'mode' },
        lualine_b = { 'branch',
            { 'diff', symbols = { added = '', modified = '', removed = '' }, },
            'diagnostics' },
        lualine_c = { {
            'filename',
            file_status = true, -- Displays file status (readonly status, modified status)
            newfile_status = false, -- Display new file status (new file means no write after created)
            shorting_target = 40, -- Shortens path to leave 40 spaces in the window
            -- for other components. (terrible name, any suggestions?)
            symbols = {
                newfile = '', -- Text to show for new created file before first writting
                modified = '', -- Text to show when the file is modified.
                readonly = '', -- Text to show when the file is non-modifiable or readonly.
                unnamed = '', -- Text to show for unnamed buffers.
            }
     } },
        lualine_x = { 'encoding', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
}

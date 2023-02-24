--NOTE:
local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
        return
end

local status_oks, project = pcall(require, "project_nvim")
if not status_oks then
        return
end



-- disable preview binaries
-- local previewers = require("telescope.previewers")
-- local Job = require("plenary.job")
-- local new_maker = function(filepath, bufnr, opts)
--     filepath = vim.fn.expand(filepath)
--     Job:new({
--         command = "file",
--         args = { "--mime-type", "-b", filepath },
--         on_exit = function(j)
--             local mime_type = vim.split(j:result()[1], "/")[1]
--             if mime_type == "text" then
--                 previewers.buffer_previewer_maker(filepath, bufnr, opts)
--             else
--                 -- maybe we want to write something to the buffer here
--                 vim.schedule(function()
--                     vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
--                 end)
--             end
--         end
--     }):sync()
-- end

telescope.setup {
        defaults = {
                prompt_prefix = " ",
                selection_caret = " ",
                path_display = { "truncate" },
                selection_strategy = "reset",
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = {
                        horizontal = {
                                prompt_position = "top",
                                preview_width = 0.55,
                                results_width = 0.8,
                        },
                        vertical = {
                                mirror = false,
                        },
                        width = 0.87,
                        height = 0.80,
                        preview_cutoff = 120,
                },
        },

        mappings = {

        },

        pickers = {
                oldfiles = {
                        theme = "dropdown",
                        previewer = false,

                },
                fd = {
                        -- find_command = { "find", "-type", "f" },
                        find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
                },

                colorscheme = {
                        theme = "dropdown",
                },
                live_grep = {
                        find_command = { "rg" },
                },
                lsp_references = {
                        theme = "cursor",
                        -- theme = "command_pane",
                },
                commands = {
                        theme = "dropdown",
                }


        },


        extensions = {

                fzf = {
                        fuzzy = true, -- false will only do exact matching
                        override_generic_sorter = true, -- override the generic sorter
                        override_file_sorter = true, -- override the file sorter
                        case_mode = "smart_case", -- or "ignore_case" or "respect_case"
                },

        },


}


project.setup {

        -- detection_methods = { "lsp", "pattern" }, -- NOTE: lsp detection will get annoying with multiple langs in one project
        detection_methods = { "pattern" },

        -- patterns used to detect root dir, when **"pattern"** is in detection_methods
        patterns = { ".git", "CMakeLists.txt" },
        manual_mode = true,
}

telescope.load_extension('fzf')
telescope.load_extension('projects')

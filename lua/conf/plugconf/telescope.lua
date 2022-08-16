--


-- disable preview binaries
local previewers = require("telescope.previewers")
local Job = require("plenary.job")
local new_maker = function(filepath, bufnr, opts)
    filepath = vim.fn.expand(filepath)
    Job:new({
        command = "file",
        args = { "--mime-type", "-b", filepath },
        on_exit = function(j)
            local mime_type = vim.split(j:result()[1], "/")[1]
            if mime_type == "text" then
                previewers.buffer_previewer_maker(filepath, bufnr, opts)
            else
                -- maybe we want to write something to the buffer here
                vim.schedule(function()
                    vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
                end)
            end
        end
    }):sync()
end


require('telescope').setup {
    defaults = {
        --    buffer_previewer_maker = new_maker,
        -- file_ignore_patterns = {},
        prompt_prefix = " ",
        selection_caret = " ",
        -- path_display = {
        --   -- shorten= {
        --   --   -- e.g. for a path like
        --   --   `alpha/beta/gamma/delta.txt`
        --   -- setting `path_display.shorten = { len = 1, exclude = {1, -1} }`
        --   -- will give a path like:
        --   --   `alpha/b/g/delta.txt`
        --   len = 3, exclude = {1, -1}
        -- },
    },

    mappings = {


    },

    pickers = {
        oldfiles = {
            theme = "dropdown",
            previewer = false,
            -- find_command = { "find", "-type", "f" },
            find_command = { "fd" },

        },
        fd = {
            -- find_command = { "find", "-type", "f" },
            find_command = { "fd", "--type", "f", "--strip-cwd-prefix" },
        },

        live_grep = {
            find_command = { "rg" },
        },

    },



    extensions = {
        -- Your extension configuration goes here:
        -- extension_name = {
        --   extension_config_key = value,
        -- }
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        },
        file_browser = {
            theme = "dropdown",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            -- mappings = {
            --     ["i"] = {
            --         -- your custom insert mode mappings
            --     },
            --     ["n"] = {
            --         -- your custom normal mode mappings
            --     },
            -- },
        },
    },



}

require("project_nvim").setup {}

require('telescope').load_extension('fzf')
require('telescope').load_extension('vim_bookmarks')
require('telescope').load_extension('projects')
require("telescope").load_extension "file_browser"

local opts = {
    insert_mode = { noremap = true, silent = true },
    normal_mode = { noremap = true, silent = true },
    visual_mode = { noremap = true, silent = true },
    visual_block_mode = { noremap = true, silent = true },
    command_mode = { noremap = true, silent = true },
    term_mode = { silent = true },
}

local mode_adapters = {
    insert_mode = "i",
    normal_mode = "n",
    term_mode = "t",
    visual_mode = "v",
    visual_block_mode = "x",
    command_mode = "c",
}

local keymaps = {
    insert_mode = {
    },
    normal_mode = {
        ["<leader>fr"] = "<cmd>call VSCodeNotify('workbench.action.showCommands')<CR>",
        ["<leader>fh"] = "<cmd>call VSCodeNotify('workbench.action.openRecent')<CR>",
        ["<leader>fs"] = "<cmd>call VSCodeNotify('workbench.action.selectTheme')<CR>",
        ["<leader>fl"] = "<cmd>call VSCodeNotify('workbench.action.terminal.focusFind')<CR>",
        ["<leader>n"] = "<cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>",
        ["<leader>m"] = "<cmd>call VSCodeNotify('workbench.action.tasks.runTask','Toggle All Panel')<CR>",
    },
    term_mode = {
    },
    visual_mode = {

    },
    visual_block_mode = {
    },
    command_mode = {
    },
}

for mode, map in pairs(keymaps) do
        for key, cmd in pairs(map) do
                vim.api.nvim_set_keymap(mode_adapters[mode], key, cmd, opts[mode])
        end
end

--NOTE:
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
        -- Resize with arrows
        ["<A-Up>"]    = ":resize -2<CR>",
        ["<A-Down>"]  = ":resize +2<CR>",
        ["<A-Left>"]  = ":vertical resize -2<CR>",
        ["<A-Right>"] = ":vertical resize +2<CR>",

        -- Move current line / block
        ["<A-w>"] = ":m .-2<CR>==",
        ["<A-s>"] = ":m .+1<CR>==",

        -- -- Better move
        ["K"]          = "4k",
        ["J"]          = "4j",
        ["H"]          = "^",
        ["L"]          = "$",
        ["<"]          = "<<",
        [">"]          = ">>",
        ["<leader>u"]  = "J",
        --buffers
        ["{"]          = ":bn<CR>",
        ["}"]          = ":bp<CR>",
        ["<c-[>"]  = ":bd<CR>",
        --cancel the highlight
        ["<leader>q"]  = ":nohl<CR>",
        --dashboad
        ["<Leader>ss"] = ":<C-u>SessionSave<CR>",
        ["<Leader>sl"] = ":<C-u>SessionLoad<CR>",
        --Telescope
        ["<leader>fh"] = "<cmd>Telescope oldfiles<CR>",
        ["<leader>ff"] = "<cmd>Telescope fd<CR>",
        ["<leader>fc"] = "<cmd>Telescope current_buffer_fuzzy_find<CR>",
        ["<leader>fl"] = "<cmd>Telescope live_grep<CR>",
        ["<leader>fb"] = "<cmd>Telescope buffers<CR>",
        ["<Leader>fm"] = "<cmd>Telescope marks<CR>",
        ["<Leader>fM"] = "<cmd>TodoTelescope<CR>",
        ["<Leader>fs"] = "<cmd>Telescope colorscheme<CR>",
        ["<Leader>fp"] = "<cmd>Telescope projects<CR>",
        --hop
        ["gf"]         = "<cmd>HopWord<CR>",
        --n vim tree
        ["<leader>n"]  = "<cmd>NeoTreeFloatToggle<CR>",
    },


    term_mode = {
        -- Terminal window navigation
        ["<C-h>"] = "<C-\\><C-N><C-w>h",
        ["<C-j>"] = "<C-\\><C-N><C-w>j",
        ["<C-k>"] = "<C-\\><C-N><C-w>k",
        ["<C-l>"] = "<C-\\><C-N><C-w>l",
    },

    visual_mode = {
        -- Better indenting
        ["<"] = "<gv",
        [">"] = ">gv",

        ["K"] = "3k",
        ["J"] = "3j",
        ["H"] = "^",
        ["L"] = "$",
    },

    visual_block_mode = {
        -- Move current line / block with Alt-j/k ala vscode.
        ["<A-s>"] = ":m '>+1<CR>gv-gv",
        ["<A-w>"] = ":m '<-2<CR>gv-gv",
        ["k"]     = "3k",
        ["J"]     = "3j",
        ["H"]     = "^",
        ["L"]     = "$",
    },

    command_mode = {
    },
}
--Remap space as leader key
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--load keymaps
for mode, map in pairs(keymaps) do
    for key, cmd in pairs(map) do
        vim.api.nvim_set_keymap(mode_adapters[mode], key, cmd, opts[mode])
    end
end

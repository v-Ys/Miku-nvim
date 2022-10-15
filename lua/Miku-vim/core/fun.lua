local M = {}

local RUN = {

        c = function()
                vim.cmd("TermExec cmd=\"cd %:p:h && gcc %:t -o %:t:r && ./%:t:r && rm %:t:r\"")
        end;

        lua = function()
                vim.cmd("TermExec cmd=\"cd %:p:h && lua %:t\"")
        end;

        python = function()
                vim.cmd("TermExec cmd=\"cd %:p:h && python3 %:t\"")
        end;

        rust = function()
                vim.cmd("TermExec cmd=\"cd %:p:h && cargo run\"")
        end

}


local Terminal = require("toggleterm.terminal").Terminal
local btop = Terminal:new({ cmd = "btop", hidden = true })
function BTOP()
        btop:toggle()
end

M.run = function()
        --get current buffer filetype
        local ftp = vim.bo.filetype
        RUN[ftp]()
end

return M

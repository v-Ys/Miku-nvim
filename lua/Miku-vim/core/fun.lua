local M = {}
--for btop
local Terminal = require("toggleterm.terminal").Terminal
local btop = Terminal:new({ cmd = "btop", hidden = true })

-- for run
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

M.btop = function()
        btop:toggle()
end

M.run = function()
        --get current buffer filetype
        local ftp = vim.bo.filetype
        RUN[ftp]()
end

M.FormatJSON = function()
        vim.cmd("%!python -m json.tool")
end

return M

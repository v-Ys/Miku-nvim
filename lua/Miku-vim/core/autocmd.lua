vim.cmd([[

augroup _format
   autocmd!
   autocmd BufWritePre *.c,*.py,*.cpp,*.rs,*.lua lua vim.lsp.buf.formatting_sync()
augroup end

]])

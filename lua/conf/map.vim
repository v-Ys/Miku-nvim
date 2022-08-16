
"Keyboard Map 
let mapleader = "\<Space>"
noremap K 3k
noremap J 3j 
noremap L 3l 
noremap H 3h 
noremap E J 

noremap { :bn<CR>
noremap } :bp<CR>
nnoremap <leader>] :bd<CR>
nnoremap <leader>u /eqdwe;wqe;qwqi29034fjoir<cr>

"--NvimTree----
" nnoremap <C-n> :NvimTreeOpen<cr>


"--Rnvimr----
nnoremap <leader>r :RnvimrToggle<CR>


"dashboard
nnoremap <Leader>ss :<C-u>SessionSave<CR>
nnoremap <Leader>sl :<C-u>SessionLoad<CR>
" nnoremap  <Leader>ff :DashboardFindFile<CR>

"telescope
nnoremap <leader>fh :Telescope oldfiles<CR>
nnoremap <leader>ff <cmd>Telescope fd<cr>
nnoremap <leader>fc <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fl <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <Leader>fM :Telescope vim_bookmarks current_file<cr>
nnoremap <Leader>fm :Tejescope vim_bookmarks<CR>
nnoremap <Leader>fs :Telescope colorscheme<CR>
nnoremap <Leader>fj :Telescope file_browser<CR> <ESC>
nnoremap <Leader>fp :Telescope projects<CR>



"lsp
nnoremap <leader>gd <cmd> lua vim.lsp.buf.definition()<CR>
nnoremap <leader>gi <cmd> lua vim.lsp.buf.hover()<CR>
nnoremap <leader>gr <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <leader>gs <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap <leader>gk <cmd>lua vim.diagnostic.goto_prev({ border = "rounded" })<CR>
nnoremap <leader>gj <cmd>lua vim.diagnostic.goto_next({ border = "rounded" })<CR>





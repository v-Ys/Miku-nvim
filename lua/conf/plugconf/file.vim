

"--FZF----




"--Rnvimr----
" " Make Ranger replace Netrw and be the file explorer
" let g:rnvimr_enable_ex = 1
" " Make Ranger to be hidden after picking a file
" let g:rnvimr_enable_picker = 1
" " Replace `$EDITOR` candidate with this command to open the selected file
" let g:rnvimr_edit_cmd = 'drop'
" " Make Neovim wipe the buffers corresponding to the files deleted by Ranger
" let g:rnvimr_enable_bw = 1



"--nvim-tree----
" lua<<EOF
"
" vim.g.nvim_tree_icons = {
"   default = "",
"   symlink = "",
"   git = {
"     unstaged = "",
"     staged = "S",
"     unmerged = "",
"     renamed = "➜",
"     deleted = "",
"     untracked = "U",
"     ignored = "◌",
"   },
"   folder = {
"     default = "",
"     open = "",
"     empty = "",
"     empty_open = "",
"     symlink = "",
"   },
" }
"
" require'nvim-tree'.setup {
" }
"
" EOF


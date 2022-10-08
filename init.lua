--NOTE:
require('impatient')
require('Miku-vim.core')
require('Miku-vim.conf')
vim.g.catppuccin_flavour = "frappe" -- latte, frappe
require("catppuccin").setup(
    vim.api.nvim_command "colorscheme catppuccin")

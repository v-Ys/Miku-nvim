--NOTE:
if vim.g.vscode then
        require('Miku-vim.core.options')
        require('Miku-vim.core.keymap')
        require('Miku-vim.conf.sundry')
else
        require('impatient')
        require('Miku-vim.core')
        require('Miku-vim.conf')
end

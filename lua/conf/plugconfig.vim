source ~/.config/nvim/lua/conf/plugconf/UI.vim
source ~/.config/nvim/lua/conf/plugconf/file.vim
source ~/.config/nvim/lua/conf/plugconf/wiki.vim
source ~/.config/nvim/lua/conf/plugconf/code.vim

lua require("conf.plugconf.treesitter")
lua require("conf.plugconf.cmp")
lua require("conf.plugconf.telescope")
lua require("conf.plugconf.lsp")

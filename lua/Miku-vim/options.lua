--NOTE:
local options = {

    termguicolors  = true, --真彩模式
    scrolloff      = 5, --scroll 时留下五行
    cursorline     = true, --编辑行下划线
    ruler          = true, --在状态栏显示光标当前位置，哪一行哪一列
    wrap           = false, --不要换行
    linebreak      = true, --换行显示时不把一个单词拆开，遇到指定的符号（比如空格，连词号和其他标点符号）才换行
    numberwidth    = 3, --行号宽度
    showmatch      = true, --遇到括号（小括号，中括号，大括号）时，自动高亮匹配的括号：
    laststatus     = 2, --显示状态栏（默认值为1，表 示无法显示状态栏）
    showmode       = true, --左下角显示当前 vim 模式
    number         = true, --显示行号
    relativenumber = true, --相对行数
    signcolumn     = 'yes',
    listchars      = ("eol:↴,tab:»·,trail:·"),
    --
    backup         = false, --禁止生成临时文件
    swapfile       = false,
    errorbells     = false, --关闭错误信息响铃
    fileencodings  = 'utf-8',
    --
    -- smartindent = true, --智能缩进
    autoindent     = true, --回车后下一行自动缩进
    shiftwidth     = 4, --缩进的列数
    copyindent     = true, --复制粘贴时保留原有的缩进
    tabstop        = 4, --一个tab键所占的列数
    expandtab      = true, --自动将tab键输入转化为相应的空格数
    list           = true,
    --
    hlsearch       = true, --高亮显示搜索的匹配结果，输入结束时才显示
    incsearch      = true, --高亮显示搜索的匹配过程，每输入一个字符，就自动跳到第一个匹配的结果：
    smartcase      = true, --智能搜索
    ignorecase     = true, --搜索时忽略大小写
    completeopt    = { 'menu', 'menuone', 'noselect' }, --for cmp
    showcmd        = true, --显示输入命令
    wildmenu       = true, --在命令模式下，按下 tab 键可以自动补全命令
    wildmode       = 'longest:list,full',
    --set fold
    --foldcolumn = 1, --show fold in line number
    foldlevel      = 99, -- Using ufo provider need a large value, feel free to decrease the value
    foldlevelstart = 99,
    foldenable     = true,
    foldmethod     = 'expr',
    foldexpr       = 'nvim_treesitter#foldexpr()',
    -- bg='dark'
    -- bg='light'

}


for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd(
-- 'colorscheme dracula'
-- 'colorscheme solarized'
-- 'colorscheme mariana'
-- 'colorscheme dracula'
-- 'colorscheme github_light'
-- 'colorscheme github_dark'
-- 'colorscheme onehalflight'
-- 'colorscheme onehalfdark'
'colorscheme one-nvim'
-- 'colorscheme codedark'
-- 'colorscheme xcodelight'
-- 'colorscheme xcodelighthc'
-- 'colorscheme xcodewwdc'
-- 'colorscheme everforst'
-- 'colorscheme gruvbox-material'
-- 'colorscheme edge'
)

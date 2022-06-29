
"常规配置
set termguicolors                            "真彩模式

set shortmess=atI                            " 启动的时候不显示那个援助乌干达儿童的提示  

set nobackup                                 "禁止生成临时文件
set noswapfile

set noerrorbells                             "关闭错误信息响铃

set number                                   "显示行号

set nocompatible                             "使用vim自己的键盘模式，

syntax on                                    "语法高亮

set showmode                                 "左下角显示当前 vim 模式

set showcmd                                  "显示输入命令

set mouse=a                                  "鼠标可用

filetype indent on                           "侦测文件类型

set autoindent                               "回车后下一行自动缩进

set tabstop=4                                "一个tab键所占的列数

set shiftwidth=4                             "缩:进的列数

set expandtab                                "自动将tab键输入转化为相应的空格数

set scrolloff=5                              "5 lines

set relativenumber                           "相对行数

set cursorline                               "编辑行下划线

set linebreak                                "换行显示时不把一个单词拆开，遇到指定的符号（比如空格，连词号和其他标点符号）才换行

set laststatus=2                             "显示状态栏（默认值为1，表示无法显示状态栏）

set ruler                                    "在状态栏显示光标当前位置，哪一行哪一列

set showmatch                                "遇到括号（小括号，中括号，大括号）时，自动高亮匹配的括号：

set hlsearch                                 "高亮显示搜索的匹配结果，输入结束时才显示

set incsearch                                "高亮显示搜索的匹配过程，每输入一个字符，就自动跳到第一个匹配的结果：

set smartcase                                "智能搜索

set ignorecase                               "搜索时忽略大小写

set autoread                                 "设置当文件被改动时自动载入

set listchars=tab:»·,trail:·                 "将tab键和多余的空格显示出来
set list

set wildmenu                                 "在命令模式下，按下 tab 键可以自动补全命令
set wildmode=longest:list,full

set smartindent                              "智能缩进

set copyindent                               "复制粘贴时保留原有的缩进

set foldmethod=manual                        "代码折叠

set nowrap                                   "不要换行

set completeopt=menu,menuone,noselect        "for cmp

set encoding=utf-8 fileencodings=utf-8

" set foldmethod=expr
" set foldexpr=nvim_treesitter#foldexpr()

"剪切板
set clipboard=unnamedplus
set clipboard=unnamed
set numberwidth=4

"Cursor
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"







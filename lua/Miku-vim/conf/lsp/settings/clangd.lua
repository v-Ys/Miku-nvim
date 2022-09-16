return {
  cmd = {
    "clangd",     -- NOTE: 只支持clangd 13.0.0 及其以下版本，新版本会有问题
    "--background-index", -- 后台建立索引，并持久化到disk
  },
     -- root_pattern(
     --      '.clangd',
     --      '.clang-tidy',
     --      -- '.clang-format',
     --      'compile_commands.json',
     --      'compile_flags.txt',
     --      'configure.ac',
     --      '.git'
     --    ),
}

vim.api.nvim_exec(
  [[
    let g:test#javascript#jest#file_pattern = '\v(__tests__/.*|(spec|test))\.(js|jsx|coffee|ts|tsx)$'
    let test#strategy = {'nearest': 'neovim', 'file': 'neovim'}
  ]],
  true
)


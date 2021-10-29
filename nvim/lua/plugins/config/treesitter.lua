require('nvim-treesitter.configs').setup({
  -- ensure_installed = 'maintained',
  ensure_installed = { 'lua', 'typescript', 'tsx', 'css', 'scss', 'html', 'bash', 'dockerfile', 'graphql', 'json' },
  highlight = { enable = true, additional_vim_regex_highlighting = false },
  autotag = { enable = true },
})


vim.g.tokyonight_transparent = true
vim.api.nvim_command('colorscheme tokyonight')

require('lualine').setup({
  options = {
    theme = 'tokyonight',
  },
})


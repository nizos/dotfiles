local fmt_prettier = {
  function()
    return {
      exe = 'prettier',
      args = { '--stdin-filepath', vim.api.nvim_buf_get_name(0), '--single-quote' },
      stdin = true,
    }
  end,
}

require('formatter').setup({
  logging = true,
  filetype = {
    javascript = fmt_prettier,
    typescript = fmt_prettier,
    typescriptreact = fmt_prettier,
    css = fmt_prettier,
    less = fmt_prettier,
    scss = fmt_prettier,
    json = fmt_prettier,
    graphql = fmt_prettier,
    html = fmt_prettier,
    yaml = fmt_prettier,
    vue = fmt_prettier,
    lua = {
      function()
        local config_path = os.getenv('HOME') .. '/.config/stylua.toml'
        return {
          exe = 'stylua',
          args = { '--config-path', config_path, '-' },
          stdin = true,
        }
      end,
    },
  },
})


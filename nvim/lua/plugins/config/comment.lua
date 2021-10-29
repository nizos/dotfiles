require('nvim-treesitter.configs').setup({
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
})

require('nvim_comment').setup({
  marker_padding = true,
  comment_empty = false,
  create_mappings = false,
  hook = function()
    local ft = vim.api.nvim_buf_get_option(0, 'filetype')
    if
      ft == 'jsx'
      or ft == 'javascript'
      or ft == 'javascriptreact'
      or ft == 'tsx'
      or ft == 'typescript'
      or ft == 'typescriptreact'
      or ft == 'html'
      or ft == 'css'
    then
      require('ts_context_commentstring.internal').update_commentstring()
    end
  end,
})


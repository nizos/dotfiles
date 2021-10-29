local M = {}

M.normal = {
  ['<c-k>'] = { ':lua vim.lsp.buf.signature_help()<cr>', 'signature' },
  ['K'] = { ':lua vim.lsp.buf.hover()<cr>', 'hover' },
  ['gd'] = { ':lua vim.lsp.buf.definition()<cr>', 'go definition' },
  ['gi'] = { ':lua vim.lsp.buf.implementation()<cr>', 'go type implementation' },
  ['gr'] = { ':lua vim.lsp.buf.references()<cr>', 'go references' },
  ['ge'] = { ':lua vim.lsp.diagnostic.goto_next()<cr>', 'next diagnostic' },
  ['gE'] = { ':lua vim.lsp.diagnostic.goto_prev()<cr>', 'previous diagnostic' },
  ['<leader>'] = {
    ['e'] = { ':lua vim.lsp.diagnostic.show_line_diagnostics()<cr>', 'show diagnostics' },
    ['ca'] = { ':lua vim.lsp.buf.code_action()<cr>', 'code action' },
    -- :Format used instead
    -- ['l'] = { ':lua vim.lsp.buf.formatting()<cr>', 'format' },
    ['re'] = { ':lua vim.lsp.buf.rename()<cr>', 'rename' },
    ['s'] = { ':lua vim.lsp.buf.document_symbol()<cr>', 'symbol' },
  },
}

M.visual = {
  ['<leader>'] = {
    ['ca'] = { ':lua vim.lsp.buf.code_action()<cr>', 'code action' },
  },
}

return M


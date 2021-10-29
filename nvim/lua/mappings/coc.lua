local M = {}

M.normal = {
  ['<leader>'] = {
    ['oi'] = { ":call CocAction('runCommand', 'editor.action.organizeImport')<cr>", 'organize imports' },
    ['ca'] = { '<Plug>(coc-codeaction)', 'code action' },
    ['re'] = { '<Plug>(coc-rename)', 'rename' },
  },

  ['gE'] = { '<Plug>(coc-diagnostic-prev)', 'previous diagnostic' },
  ['ge'] = { '<Plug>(coc-diagnostic-next)', 'next diagnostic' },
  ['gd'] = { '<Plug>(coc-definition)', 'go definition' },
  ['gy'] = { '<Plug>(coc-type-definition)', 'go type definition' },
  ['gi'] = { '<Plug>(coc-implementation)', 'go type implementation' },
  ['gr'] = { '<Plug>(coc-references)', 'go references' },
  ['K'] = { ":call CocActionAsync('doHover')<cr>", 'inline doc' },
}

M.visual = {
  ['<leader>'] = {
    ['ca'] = { '<Plug>(coc-codeaction-selected)', 'code action' },
  },
}

return M


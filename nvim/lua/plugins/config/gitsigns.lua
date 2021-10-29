require('gitsigns').setup({
  signs = {
    add = { hl = 'GitSignsAdd', text = '+', numhl = 'GitSignsAddNr', linehl = 'GitSignsAddLn' },
    change = { hl = 'GitSignsChange', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
    delete = { hl = 'GitSignsDelete', text = '_', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
    topdelete = { hl = 'GitSignsDelete', text = '-', numhl = 'GitSignsDeleteNr', linehl = 'GitSignsDeleteLn' },
    changedelete = { hl = 'GitSignsChange', text = '~', numhl = 'GitSignsChangeNr', linehl = 'GitSignsChangeLn' },
  },
  numhl = false,
  linehl = false,
  -- TODO: move to mappings
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,

    -- ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<cr>'" },
    -- ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<cr>'" },

    -- ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<cr>',
    -- ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<cr>',
    -- ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<cr>',
    -- ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<cr>',
    -- ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<cr>',
    -- ['n <leader>gb'] = '<cmd>lua require"gitsigns".blame_line()<cr>',

    -- -- Text objects
    -- ['o ih'] = ':<C-U>lua require"gitsigns".select_hunk()<cr>',
    -- ['x ih'] = ':<C-U>lua require"gitsigns".select_hunk()<cr>',
  },
  watch_index = {
    interval = 1000,
  },
  current_line_blame = false,
  sign_priority = 6,
  update_debounce = 100,
  status_formatter = nil, -- Use default
  use_internal_diff = true, -- If luajit is present
})


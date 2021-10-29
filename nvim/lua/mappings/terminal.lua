local util = require('util')

return {
  -- change window
  ['<a-h>'] = { util.t('<C-\\><C-N><c-w>h'), 'focus window left' },
  ['<a-j>'] = { util.t('<C-\\><C-N><c-w>j'), 'focus window down' },
  ['<a-k>'] = { util.t('<C-\\><C-N><c-w>k'), 'focus window up' },
  ['<a-l>'] = { util.t('<C-\\><C-N><c-w>l'), 'focus window right' },
  -- move window
  ['<a-H>'] = { util.t('<C-\\><C-N><c-w>H'), 'move to window left' },
  ['<a-J>'] = { util.t('<C-\\><C-N><c-w>J'), 'move to window down' },
  ['<a-K>'] = { util.t('<C-\\><C-N><c-w>K'), 'move to window up' },
  ['<a-L>'] = { util.t('<C-\\><C-N><c-w>L'), 'move to window right' },
}


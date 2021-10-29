-----------------
-- 6D 65 65 70 --
-- 6D 65 65 70 --
-----------------

require('util')
require('options')

vim.defer_fn(function()
  require('plugins/manager')
  require('plugins')
  require('mappings')
end, 0)


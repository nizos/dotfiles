local M = {}

local options = require('options')

function M.setup()
  local wk = require('which-key')
  wk.setup({})

  wk.register(require('mappings/normal'), { mode = 'n' })
  wk.register(require('mappings/insert'), { mode = 'i' })
  wk.register(require('mappings/visual'), { mode = 'v' })
  wk.register(require('mappings/terminal'), { mode = 't' })

  if options.use_coc then
    local coc = require('mappings/coc')
    wk.register(coc.normal, { mode = 'n' })
    wk.register(coc.visual, { mode = 'v' })
  else
    local lsp = require('mappings/lsp')
    wk.register(lsp.normal, { mode = 'n' })
    wk.register(lsp.visual, { mode = 'v' })
  end
end

return M


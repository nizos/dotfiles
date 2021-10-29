local M = {}

M.use_coc = true

local g = vim.g
local o = vim.opt
local cmd = vim.cmd
local indent = 2

g.mapleader = ' '
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- enable auto complete
-- o.omnifunc = 'v:lua.vim.lsp.omnifunc'

o.expandtab = true
o.shiftwidth = indent
o.tabstop = indent
o.smartindent = true

o.list = true
o.listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±,trail:⸱'
o.number = true
o.relativenumber = true
o.cursorline = true
-- o.cursorcolumn = true
o.wrap = false

o.swapfile = false
o.background = 'dark'
o.inccommand = 'nosplit'
o.hlsearch = true
o.incsearch = true

o.completeopt = 'menuone,noselect'
o.hidden = true
o.splitbelow = true
o.splitright = true

o.ignorecase = true
o.smartcase = true
o.equalalways = true
o.termguicolors = true
o.scrolloff = 20
o.timeoutlen = 300
o.cmdheight = 2
o.lazyredraw = true
o.updatetime = 300

cmd('autocmd vimresized * wincmd =')
cmd('autocmd termopen * startinsert')

if M.use_coc then
  cmd("autocmd CursorHold * silent call CocActionAsync('highlight')")
end

return M


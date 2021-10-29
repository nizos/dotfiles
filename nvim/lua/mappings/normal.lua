local util = require('util')

return {
  ['Q'] = { '@q', 'replay macro' },
  ['<a-r>'] = { ':WinResizerStartResize<cr>', 'resize window' },
  ['-'] = {
    function()
      util.open()
    end,
    'dired',
  },
  ['H'] = {
    function()
      util.open()
    end,
    'dired',
  },

  ['<a-u>'] = { ':vsp +term<cr>', 'vertical split term' },
  ['<a-v><a-u>'] = { ':sp +term<cr>', 'horizontal split term' },
  ['<esc>'] = { ':nohlsearch<cr><esc>', 'remove search highlight' },
  ['<c-n>'] = { '*', 'search forwards' },
  ['<c-p>'] = { '#', 'search backwards' },
  ['<c-t>'] = { ':tabnew | :lua util.open()<cr>', 'new tab' },
  ['<c-h>'] = { ':tabp<cr>', 'prev tab' },
  ['<c-l>'] = { ':tabn<cr>', 'next tab' },

  -- change window
  ['<a-h>'] = { '<c-w>h', 'focus window left' },
  ['<a-j>'] = { '<c-w>j', 'focus window down' },
  ['<a-k>'] = { '<c-w>k', 'focus window up' },
  ['<a-l>'] = { '<c-w>l', 'focus window right' },

  -- move window
  ['<a-H>'] = { '<c-w>H', 'move to window left' },
  ['<a-J>'] = { '<c-w>J', 'move to window down' },
  ['<a-K>'] = { '<c-w>K', 'move to window up' },
  ['<a-L>'] = { '<c-w>L', 'move to window right' },

  ['<leader>'] = {
    ['b'] = { name = 'buffers' },
    ['bb'] = { '<cmd>Telescope buffers<cr>', 'opened' },
    ['bd'] = { '<cmd>bdelete<cr>', 'delete' },
    ['bn'] = { '<cmd>bnext<cr>', 'next' },
    ['bp'] = { '<cmd>bprev<cr>', 'previous' },

    ['f'] = { name = 'file' },
    ['fed'] = { ':e $MYVIMRC<cr>', 'init.lua' },
    ['ff'] = { '<cmd>Telescope find_files<cr>', 'find file' },
    ['fr'] = { '<cmd>Telescope oldfiles<cr>', 'open recent file' },
    ['fs'] = { ':update<cr>', 'save' },
    ['fg'] = { '<cmd>Telescope live_grep<cr>', 'grep' },
    ['fb'] = { '<cmd>Telescope current_buffer_fuzzy_find<cr>', 'find in buffer' },

    ['t'] = { name = 'terminal/test' },
    ['te'] = { '<cmd>term<cr>', 'terminal' },
    ['tn'] = { '<cmd>TestNearest<cr>', 'test nearest' },
    ['tt'] = { '<cmd>TestFile<cr>', 'test file' },

    ['l'] = { ':Format<cr>', 'format' },

    ['vsp'] = {
      function()
        util.open('vsp')
      end,
      'vertical split',
    },
    ['sp'] = {
      function()
        util.open('sp')
      end,
      'horizontal split',
    },

    ['p'] = { name = 'packer' },
    ['pc'] = { '<cmd>PackerCompile<cr>', 'compile' },
    ['ps'] = { '<cmd>PackerSync<cr>', 'sync' },

    ['q'] = { ':q<cr>', 'quit' },

    ['<leader>'] = {
      ':CommentToggle<cr>j',
      'toggle comment',
    },

    -- ['md'] = { '<cmd>MarkdownPreviewToggle<cr>', 'markdown preview' },
    ['g'] = { name = 'git' },
    ['gb'] = {
      function()
        require('gitsigns').blame_line()
      end,
      'blame',
    },
    ['gs'] = {
      '<cmd>Neogit<cr>',
      'neogit',
    },

    ['zz'] = {
      '<cmd>ZenMode<cr>',
      'zen mode',
    },
  },
}


local options = require('options')

require('packer').startup({
  config = {
    display = {
      -- open_fn = require('packer.util').float({ border = 'single' }),
    },
  },

  function(use)
    use({ 'wbthomason/packer.nvim' })
    use({ 'nvim-lua/plenary.nvim', module = 'plenary' })
    use({ 'nvim-lua/popup.nvim', module = 'popup' })

    use({
      'nvim-telescope/telescope.nvim',
      opt = true,
      requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
      cmd = 'Telescope',
      config = function()
        require('plugins/config/telescope')
      end,
    })

    use({
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = function()
        require('plugins/config/treesitter')
      end,
    })

--     use({
--       'windwp/nvim-autopairs',
--       event = 'BufEnter',
--       config = function()
--         require('plugins/config/autopairs')
--       end,
--     })

    use({
      'windwp/nvim-ts-autotag',
      requires = { 'nvim-treesitter/nvim-treesitter' },
      config = function()
        require('nvim-ts-autotag').setup()
      end,
    })

    use({ 'blankname/vim-fish', event = 'BufEnter' })
    use({ 'tpope/vim-surround', event = 'BufEnter' })
    use({ 'tpope/vim-eunuch', event = 'BufEnter' })
    use({ 'tpope/vim-sleuth', event = 'BufEnter' })

    use({
      'rcarriga/vim-ultest',
      requires = { 'vim-test/vim-test' },
      run = ':UpdateRemotePlugins',
      config = function()
        require('plugins/config/ultest')
      end,
    })

    use({
      'norcalli/nvim-colorizer.lua',
      config = function()
        require('plugins/config/colorizer')
      end,
    })

    -- use({ 'iamcco/markdown-preview.nvim', run = ':call mkdp#util#install()' })

    use({
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons'},
    })

    use({
      'Shatur/neovim-ayu',
      config = function()
        require('plugins/config/ayu')
      end,
    })

    use({
      'folke/zen-mode.nvim',
      config = function()
        require('plugins/config/zen-mode')
      end,
    })

    use({
      'simeji/winresizer',
      event = 'BufEnter',
      config = function()
        require('plugins/config/winresizer')
      end,
    })

    use({
      'TimUntersberger/neogit',
      requires = { 'nvim-lua/plenary.nvim' },
      cmd = 'Neogit',
      config = function()
        require('plugins/config/neogit')
      end,
    })

    use({
      'lewis6991/gitsigns.nvim',
      event = 'BufReadPre',
      wants = { 'plenary.nvim' },
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('plugins/config/gitsigns')
      end,
    })

    use({
      'terrortylor/nvim-comment',
      requires = { 'JoosepAlviste/nvim-ts-context-commentstring' },
      config = function()
        require('plugins/config/comment')
      end,
    })

    use({
      'tamago324/lir.nvim',
      requires = { 'nvim-lua/plenary.nvim' },
      config = function()
        require('plenary.path')
        require('plugins.config.lir')
      end,
    })

    use({
      'mhartington/formatter.nvim',
      cmd = 'Format',
      config = function()
        require('plugins/config/formatter')
      end,
    })

    use({
      'folke/which-key.nvim',
      config = function()
        require('mappings').setup()
      end,
    })

    if options.use_coc then
      use({ 'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile' })
    else
      use({ 'neovim/nvim-lspconfig' })

      use({
        'kabouzeid/nvim-lspinstall',
        requires = { 'neovim/nvim-lspconfig' },
        config = function()
          require('lspinstall').setup()
        end,
      })

      use({
        'hrsh7th/nvim-cmp',
        after = { 'nvim-lspconfig' },
        requires = {
          { 'kabouzeid/nvim-lspinstall' },
          {
            'hrsh7th/cmp-nvim-lua',
            after = 'nvim-cmp',
          },
          {
            'hrsh7th/cmp-nvim-lsp',
            after = 'nvim-cmp',
            config = function()
              require('cmp_nvim_lsp').setup({})
            end,
          },
          -- { 'L3MON4D3/LuaSnip' },
          -- { 'saadparwaiz1/cmp_luasnip' },
          -- {
          --   'hrsh7th/cmp-vsnip',
          --   after = 'nvim-cmp',
          --   requires = {
          --     'hrsh7th/vim-vsnip',
          --     'rafamadriz/friendly-snippets',
          --   },
          -- },
          {
            'hrsh7th/cmp-buffer',
            after = 'nvim-cmp',
          },
          {
            'hrsh7th/cmp-calc',
            after = 'nvim-cmp',
          },
          {
            'hrsh7th/cmp-path',
            after = 'nvim-cmp',
          },
        },
        config = function()
          require('plugins/config/cmp')
        end,
      })

      use({
        'onsails/lspkind-nvim',
        config = function()
          require('plugins/config/lspkind')
        end,
      })
    end
  end,
})


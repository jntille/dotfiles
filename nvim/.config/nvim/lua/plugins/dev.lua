return {
  -- syntax highlighting
  -- configured in treesitter.lua
  {
      'nvim-treesitter/nvim-treesitter',
      build = ':TSUpdate',
  },

  -- package manager to install language server binaries
  "williamboman/mason.nvim",

  -- lsp configuration
  -- configured in lsp.lua
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- code completion
  -- configured in cmp.lua
  {
    "hrsh7th/nvim-cmp", -- by default only provides the completion menu
    -- load cmp on InsertEnter
    -- event = "InsertEnter",
    -- dependencies will only be loaded when cmp loads
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- actual code completion
      "hrsh7th/cmp-buffer",
      "L3MON4D3/LuaSnip", -- snippet engine
      "saadparwaiz1/cmp_luasnip", -- integrated Luasnip with cmp
      "rafamadriz/friendly-snippets", -- large snippet collection for different languages
    },
    config = function()
      -- ...
    end,
  },

  -- comment line under cursor with gcc
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    }
  },

  -- configures LuaLS for editing your Neovim config
  -- {
  --   "folke/lazydev.nvim",
  --   ft = "lua", -- only load on lua files
  --   opts = {
  --   },
  -- },
}

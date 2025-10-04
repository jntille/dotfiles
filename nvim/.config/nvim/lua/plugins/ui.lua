return {
  -- search and navigation
  {
      'nvim-telescope/telescope.nvim',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- make telescope faster
  {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
  },

  -- replaces nvim's default line
  {
      'nvim-lualine/lualine.nvim',
      dependencies = {
          "nvim-tree/nvim-web-devicons"
      },
      config = function()
          require("lualine").setup({
              icons_enabled = true,
              theme = 'gruvbox',
          })
      end,
  }
}

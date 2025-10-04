-- the colorscheme should be available when starting Neovim
return {
  -- 
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function() -- will run after the plugin is loaded
        vim.cmd("colorscheme gruvbox")
    end
  },

  -- tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
}

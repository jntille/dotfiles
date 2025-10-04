-- general
require("config.options")
require("config.keymaps")

-- lazy.nvim
require("config.lazy")
-- where the list of plugins is defined
require("lazy").setup({
  spec = {
    --  ~/.config/nvim/lua/plugins/*.lua will be automatically merged in the main plugin spec
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true, notify = false },
})

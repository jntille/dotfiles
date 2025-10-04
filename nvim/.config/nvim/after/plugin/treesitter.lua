require'nvim-treesitter.configs'.setup {
  -- A list of parser names
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "diff",
    "dockerfile",
    "go",
    "hcl",
    "helm",
    "html",
    "java",
    "javascript",
    "jq",
    "json",
    "lua",
    "markdown",
    "python",
    "query",
    "rust",
    "terraform",
    "toml",
    "vim",
    "vimdoc",
    "yaml",
  },

  -- Install parsers synchronously 
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { "javascript" },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  -- Incremental selection based on AST
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}

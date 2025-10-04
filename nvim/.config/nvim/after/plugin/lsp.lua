-- called after the lsp server starts and connects to editor
-- defines keybindings for the language server
local on_attach = function(_, bufnr)
  -- helper function to reduce repetitive code
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  -- edit
  nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
  nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

  -- navigation
  nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
  nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
  nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
  nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

  -- hover menu
  nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
  nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

  -- vim commands
  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
    vim.lsp.buf.format()
  end, {})
end

-- mason language server configuration
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

-- table to define how each ls is handled
local handlers = {
    -- general handler used for all undefined
    function(server_name)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end,

    -- LANGUAGES
    -- go
    ["gopls"] = function()
      require('lspconfig').gopls.setup {
          cmd = {'gopls'},
          -- on_attach = on_attach,
          capabilities = capabilities,
          settings = {
            gopls = {
              experimentalPostfixCompletions = true,
              analyses = {
                unusedparams = true,
                shadow = true,
              },
              staticcheck = true,
            },
          },
          init_options = {
            usePlaceholders = true,
          }
    }
    end,

    -- lua 
    -- ["lua_ls"] = function()
    --     require('lazydev').setup() -- make lua ls aware of neovim's namespace
    --     require('lspconfig').lua_ls.setup {
    --         on_attach = on_attach,
    --         capabilities = capabilities,
    --         settings = {
    --             Lua = {
    --                 workspace = { checkThirdParty = false },
    --                 telemetry = { enable = false },
    --             },
    --         }
    --     }
    -- end,

    -- python
    ["pyright"] = function()
        require("lspconfig").pyright.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end,

    -- IAC
    -- terraform
    ["terraformls"] = function()
        require("lspconfig").terraformls.setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
        vim.api.nvim_create_autocmd({"BufWritePre"}, {
          pattern = {"*.tf", "*.tfvars"},
          callback = function()
            vim.lsp.buf.format()
          end,
        })
    end,

    ["helm_ls"] = function()
        require('lspconfig').helm_ls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end,

    -- FILES
    ["html"] = function()
        require("lspconfig").html.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end,

    ["jsonls"] = function()
        require("lspconfig").jsonls.setup {
            on_attach = on_attach,
            capabilities = capabilities,
        }
    end,

}

-- package manager
-- to install and manage LSP servers, DAP servers, linters, and formatters.
require("mason").setup()

-- bridges mason.nvim with the lspconfig plugin
-- making it easier to use both plugins together.
require("mason-lspconfig").setup {
    ensure_installed = {
        "ansiblels",
        "bashls",
        "docker_compose_language_service",
        "dockerls",
        "gopls",
        "helm_ls",
        "html",
        "jqls",
        "jsonls",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "terraformls",
        "yamlls",
    },
    automatic_installation = true,
    handlers = handlers,
}

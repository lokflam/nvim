return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls", "ansiblels", "bashls", "cssls",
          "dockerls", "docker_compose_language_service",
          "eslint", "gopls", "html", "helm_ls",
          "jsonls", "tsserver", "marksman",
          "sqlls", "bzl", "taplo", "tailwindcss",
          "templ", "terraformls", "yamlls",
        },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup({
              capabilities = lsp_capabilities,
            })
          end,
          ["lua_ls"] = function()
            require("lspconfig").lua_ls.setup({
              capabilities = lsp_capabilities,
              settings = {
                Lua = {
                  runtime = {
                    version = "LuaJIT"
                  },
                  diagnostics = {
                    globals = { "vim" },
                  },
                  workspace = {
                    library = {
                      vim.env.VIMRUNTIME,
                    }
                  }
                }
              }
            })
          end,
        }
      })
    end,
  },
}

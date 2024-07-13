return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig"
  },
  opts = {
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
        require("lspconfig")[server_name].setup({})
      end,
    },
  },
}

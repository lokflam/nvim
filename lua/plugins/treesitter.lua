return {
  "nvim-treesitter/nvim-treesitter",
  main = "nvim-treesitter.configs",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash", "comment", "css", "csv", "dockerfile",
      "gitignore", "go", "gomod", "gosum", "gotmpl", "gowork",
      "hcl", "helm", "html", "javascript", "jq", "json", "lua",
      "markdown", "markdown_inline", "nix", "query", "sql", "starlark",
      "terraform", "tmux", "toml", "typescript", "yaml",
    },
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<C-H>",
      },
    },
  },
}

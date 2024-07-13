return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<leader>gs", "<Cmd>Neogit<CR>", desc = "Neogit: Show status" },
    { "<leader>gb", "<Cmd>Neogit branch<CR>", desc = "Neogit: Show branches" },
    { "<leader>gc", "<Cmd>Neogit commit<CR>", desc = "Neogit: Commit" },
    { "<leader>gd", "<Cmd>Neogit diff<CR>", desc = "Neogit: Show diff" },
    { "<leader>gp", "<Cmd>Neogit pull<CR>", desc = "Neogit: Pull" },
    { "<leader>gP", "<Cmd>Neogit push<CR>", desc = "Neogit: Push" },
    { "<leader>gl", "<Cmd>Neogit log<CR>", desc = "Neogit: Show logs" },
  },
}

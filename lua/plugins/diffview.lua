return {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<leader>dw", "<Cmd>DiffviewOpen<CR>", desc = "Diffview: Show worktree" },
    { "<leader>dq", "<Cmd>DiffviewClose<CR>", desc = "Diffview: Close" },
    { "<leader>dh", "<Cmd>DiffviewFileHistory %<CR>", desc = "Diffview: Show current file history" },
  },
}

return {
  "sindrets/diffview.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "<leader>dw", "<Cmd>DiffviewOpen<CR>", "Diffview: Show worktree" },
    { "<leader>dq", "<Cmd>DiffviewClose<CR>", "Diffview: Close" },
    { "<leader>dh", "<Cmd>DiffviewFileHistory %<CR>", "Diffview: Show current file history" },
  },
}

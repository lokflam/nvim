return {
  "rmagatti/auto-session",
  lazy = false,
  opts = {
    auto_session_suppress_dirs = { "~/", "/" },
  },
  keys = {
    { "<leader>ss", "<Cmd>SessionSave<CR>", desc = "AutoSession: Save session" },
    { "<leader>sr", "<Cmd>SessionRestore<CR>", desc = "AutoSession: Restore session" },
    { "<leader>sl", "<Cmd>Autosession search<CR>", desc = "AutoSession: List sessions" },
    { "<leader>sd", "<Cmd>Autosession delete<CR>", desc = "AutoSession: Delete session" },
  },
}

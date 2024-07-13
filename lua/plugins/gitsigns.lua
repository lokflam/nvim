return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    current_line_blame = true,
  },
  keys = {
    {
      "]c",
      function()
        if vim.wo.diff then
          vim.cmd.normal({"]c", bang = true})
        else
          require("gitsigns").nav_hunk("next")
        end
      end,
      desc = "Gitsigns: Next hunk"
    },
    {
      "[c",
      function()
        if vim.wo.diff then
          vim.cmd.normal({"[c", bang = true})
        else
          require("gitsigns").nav_hunk("prev")
        end
      end,
      desc = "Gitsigns: Previous hunk"
    },
    { "<leader>hs", "<Cmd>Gitsigns stage_hunk<CR>", desc = "Gitsigns: Stage hunk" },
    { "<leader>hs", "<Cmd>Gitsigns stage_hunk<CR>", "v", desc = "Gitsigns: Stage hunk" },
    { "<leader>hr", "<Cmd>Gitsigns reset_hunk<CR>", desc = "Gitsigns: Reset hunk" },
    { "<leader>hr", "<Cmd>Gitsigns reset_hunk<CR>", "v", desc = "Gitsigns: Reset hunk" },
    { "<leader>hp", "<Cmd>Gitsigns preview_hunk<CR>", desc = "Gitsigns: Preview hunk" },
  },
}

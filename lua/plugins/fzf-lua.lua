return {
  "ibhagwan/fzf-lua",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    require("fzf-lua").register_ui_select()
  end,
  opts = {},
  keys = {
    { "<leader>ff", "<Cmd>FzfLua files<CR>", desc = "Fzf: Find files" },
    { "<leader>fo", "<Cmd>FzfLua oldfiles<CR>", desc = "Fzf: Find old (recent) files" },
    { "<leader><space>", "<Cmd>FzfLua buffers<CR>", desc = "Fzf: Find buffers" },
    { "<leader>fk", "<Cmd>FzfLua keymaps<CR>", desc = "Fzf: Find keymaps" },
    { "<leader>fs", "<Cmd>FzfLua live_grep<CR>", desc = "Fzf: Find by grep" },
    { "<leader>fr", "<Cmd>FzfLua resume<CR>", desc = "Fzf: Find resume" },
  },
}

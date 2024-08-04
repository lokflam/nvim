return {
  "ibhagwan/fzf-lua",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    require("fzf-lua").register_ui_select()
  end,
  opts = {},
  keys = {
    { "<leader>ff", "<Cmd>FzfLua files<CR>",     desc = "Find files (Fzf)" },
    { "<leader>fo", "<Cmd>FzfLua oldfiles<CR>",  desc = "Find old files (Fzf)" },
    { "<leader>fb", "<Cmd>FzfLua buffers<CR>",   desc = "Find buffers (Fzf)" },
    { "<leader>fk", "<Cmd>FzfLua keymaps<CR>",   desc = "Find keymaps (Fzf)" },
    { "<leader>fs", "<Cmd>FzfLua live_grep<CR>", desc = "Find string by grep (Fzf)" },
    { "<leader>fr", "<Cmd>FzfLua resume<CR>",    desc = "Resume find (Fzf)" },
  },
}

return {
  "ibhagwan/fzf-lua",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    require("fzf-lua").register_ui_select()
  end,
  opts = {
    fzf_colors = true,
  },
  keys = {
    { "<leader>ff", function() require("fzf-lua").files() end,          desc = "Find files (Fzf)" },
    { "<leader>fb", function() require("fzf-lua").buffers() end,        desc = "Find buffers (Fzf)" },
    { "<leader>fk", function() require("fzf-lua").keymaps() end,        desc = "Find keymaps (Fzf)" },
    { "<leader>fg", function() require("fzf-lua").live_grep_glob() end, desc = "Find string by grep (Fzf)" },
    { "<leader>fr", function() require("fzf-lua").resume() end,         desc = "Resume find (Fzf)" },
  },
}

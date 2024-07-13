return {
  "folke/which-key.nvim",
  tag = "v2.1.0",
  event = "VeryLazy",
  init = function()
    require("which-key").register()
  end,
  opt = {},
}

return {
  "stevearc/oil.nvim",
  dependencies = { "echasnovski/mini.icons" },
  event = "VeryLazy",
  opts = {
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    keymaps = {
      ["<C-h>"] = false,
      ["gd"] = {
        desc = "Oil: Toggle file detail view",
        callback = function()
          detail = not detail
          if detail then
            require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
          else
            require("oil").set_columns({ "icon" })
          end
        end,
      },
    },
  },
  keys = {
    { "-", "<Cmd>Oil<CR>", desc = "Oil: Open parent directory" },
  },
}

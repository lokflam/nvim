return {
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		opts = {
			panel = {
				enabled = false,
			},
			suggestion = {
				auto_trigger = true,
				debounce = 50,
				keymap = {
					accept = "<leader>cl",
					accept_word = "<leader>cw",
					next = "<leader>c]",
					prev = "<leader>c[",
					dismiss = "<leader>ch",
				},
			},
			filetypes = {
				yaml = true,
				markdown = true,
			},
		},
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		dependencies = {
			"zbirenbaum/copilot.lua",
			"nvim-lua/plenary.nvim",
		},
		opts = {},
		keys = {
			{ "<leader>cc", "<Cmd>CopilotChatToggle<CR>", desc = "Toggle chat window (Copilot Chat)" },
		},
	},
}

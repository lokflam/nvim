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
					accept_word = "<M-w>",
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
			{ "<M-c>", "<Cmd>CopilotChatToggle<CR>", desc = "Toggle chat window (Copilot Chat)" },
		},
	},
}

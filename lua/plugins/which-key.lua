return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		delay = 300,
		icons = {
			mappings = true,
		},
		spec = {
			-- Gruppi di keybind con nomi descrittivi
			{ "<leader>c", group = "code" },
			{ "<leader>h", group = "hunks (git)" },
			{ "<leader>f", group = "find/files" },
			{ "<leader>g", group = "git" },
			{ "<leader>d", group = "diagnostics" },
			{ "<leader>t", group = "toggle" },
			{ "<leader>x", group = "trouble" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer local keymaps (which-key)",
		},
	},
}

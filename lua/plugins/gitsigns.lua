return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		signs = {
			add = { text = "│" },
			change = { text = "│" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
			untracked = { text = "┆" },
		},
		current_line_blame = false,
		current_line_blame_opts = {
			delay = 500,
			virt_text_pos = "eol",
		},
		on_attach = function(bufnr)
			local gs = require("gitsigns")
			local function map(mode, lhs, rhs, desc)
				vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
			end

			-- Navigazione tra hunks (modifiche)
			map("n", "]c", function()
				gs.nav_hunk("next")
			end, "Next git hunk")
			map("n", "[c", function()
				gs.nav_hunk("prev")
			end, "Prev git hunk")

			-- Azioni su hunks
			map("n", "<leader>hs", gs.stage_hunk, "Stage hunk")
			map("n", "<leader>hr", gs.reset_hunk, "Reset hunk")
			map("n", "<leader>hp", gs.preview_hunk, "Preview hunk")
			map("n", "<leader>hb", function()
				gs.blame_line({ full = true })
			end, "Blame line")
			map("n", "<leader>hd", gs.diffthis, "Diff against index")
			map("n", "<leader>ht", gs.toggle_current_line_blame, "Toggle line blame")
		end,
	},
}

return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	dependencies = { "saghen/blink.cmp" },
	config = function()
		local autopairs = require("nvim-autopairs")

		autopairs.setup({
			check_ts = true, -- usa treesitter per decisioni smart (es. non chiude dentro stringhe)
			ts_config = {
				lua = { "string" }, -- non chiude parentesi extra dentro stringhe Lua
				javascript = { "template_string" },
			},
			disable_filetype = { "TelescopePrompt" },
			fast_wrap = {
				map = "<M-e>", -- Alt+e per "wrap" veloce: aggiungi parentesi attorno al resto della riga
				chars = { "{", "[", "(", '"', "'" },
				pattern = [=[[%'%"%>%]%)%}%,]]=],
				end_key = "$",
				keys = "qwertyuiopzxcvbnmasdfghjkl",
				check_comma = true,
				highlight = "Search",
				highlight_grey = "Comment",
			},
		})
	end,
}

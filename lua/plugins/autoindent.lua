local function set_indent(filetypes, width, expand)
	vim.api.nvim_create_autocmd("FileType", {
		pattern = filetypes,
		callback = function()
			vim.bo.tabstop = width
			vim.bo.softtabstop = width
			vim.bo.shiftwidth = width
			vim.bo.expandtab = expand
		end,
	})
end

set_indent({ "python" }, 4, true)

set_indent({ "c", "cpp" }, 4, true)

set_indent({ "make" }, 4, false)

set_indent({ "go" }, 4, false)

return {}

return {
	'stevearc/dressing.nvim',
	post_set_venv = function()
		vim.cmd("LspRestart")
	end,
}

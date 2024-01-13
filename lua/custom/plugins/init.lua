-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'ThePrimeagen/vim-be-good',
	{
		'ThePrimeagen/harpoon',
		enabled = true,
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<leader>a",
				function() require("harpoon"):list():append() end,
				desc = "appends currently focused buffer to harpoon list"
			},
			{
				"<C-e>",
				function()
					local harpoon = require("harpoon")
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
				desc = "opens harpoon's list of buffers"
			},
			{
				"<leader>1",
				function() require("harpoon"):list():select(1) end,
				desc = "selects first buffer in harpoon list"
			},
			{
				"<leader>2",
				function() require("harpoon"):list():select(2) end,
				desc = "selects second buffer in harpoon list"
			},
			{
				"<leader>3",
				function() require("harpoon"):list():select(3) end,
				desc = "selects third buffer in harpoon list"
			},
			{
				"<leader>4",
				function() require("harpoon"):list():select(4) end,
				desc = "selects fourth buffer in harpoon list"
			},
		},
		opts = {
			settings = {
				save_on_toggle = true
			},
		}

	},
	'AckslD/swenv.nvim',
	{
		'stevearc/dressing.nvim',
		post_set_venv = function()
			vim.cmd("LspRestart")
		end,
	}
}

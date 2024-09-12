return {
	'ThePrimeagen/harpoon',
	enabled = true,
	branch = 'harpoon2',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-telescope/telescope.nvim',
	},
	opts = {
		settings = {
			save_on_toggle = true,
		},
	},
	keys = {
		{
			'<C-e>',
			function()
				local harpoon = require 'harpoon'
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end,
			desc = "opens harpoon's list of buffers",
		},
		{
			'<C-a>',
			function()
				require('harpoon'):list():add()
			end,
			desc = 'appends currently focused buffer to harpoon list',
		},
		{
			'<leader>1',
			function()
				require('harpoon'):list():select(1)
			end,
			desc = 'selects first buffer in harpoon list',
		},
		{
			'<leader>2',
			function()
				require('harpoon'):list():select(2)
			end,
			desc = 'selects second buffer in harpoon list',
		},
		{
			'<leader>3',
			function()
				require('harpoon'):list():select(3)
			end,
			desc = 'selects third buffer in harpoon list',
		},
		{
			'<leader>4',
			function()
				require('harpoon'):list():select(4)
			end,
			desc = 'selects fourth buffer in harpoon list',
		},
	},
}

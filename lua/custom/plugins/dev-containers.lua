return {
	'https://codeberg.org/esensar/nvim-dev-container',
	dependencies = 'nvim-treesitter/nvim-treesitter',
	opts = {
		attach_mounts = {
			neovim_config = {
				enabled = true,
				options = { "readonly" }
			},
			neovim_data = {
				enabled = false,
				options = {}
			},
			-- Only useful if using neovim 0.8.0+
			neovim_state = {
				enabled = false,
				options = {}
			},
		},
	}
}

-- {
--    "amitds1997/remote-nvim.nvim",
--    version = "*", -- This keeps it pinned to semantic releases
--    dependencies = {
--        "nvim-lua/plenary.nvim",
--        "MunifTanjim/nui.nvim",
--        "rcarriga/nvim-notify",
--        -- This would be an optional dependency eventually
--        "nvim-telescope/telescope.nvim",
--    },
--    config = true, -- This calls the default setup(); make sure to call it
-- }

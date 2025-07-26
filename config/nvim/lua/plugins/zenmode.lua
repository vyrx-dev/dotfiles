return {
	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				width = 120,
			},
			plugins = {
				options = {
					laststatus = 0,
				},
				twilight = {
					enabled = false,
				},
			},
			on_open = function()
				require("package-info").hide()
			end,
		},
	},
}

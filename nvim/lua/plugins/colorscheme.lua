return {
	{
		"Tsuzat/NeoSolarized.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- set dark or light style (default "dark")
			require("NeoSolarized").setup({
				style = "dark", -- "dark" or "light"
				transparent = false, -- keep background
				terminal_colors = false, -- set terminal colors
			})
			vim.cmd("colorscheme NeoSolarized")
		end,
	},
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd("colorscheme solarized-osaka")
		end,
	},
}

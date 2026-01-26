-- Load Solarized Osaka after plugins are ready
vim.schedule(function()
	local ok, _ = pcall(vim.cmd, "colorscheme solarized-osaka")
	if not ok then
		vim.cmd("colorscheme tokyonight") -- fallback if plugin missing
	end
end)

-- Configure Solarized Osaka
require("solarized-osaka").setup({
	-- Customize styles
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {}, -- no italics
		variables = {},
		sidebars = "dark",
		floats = "dark",
	},
	-- Sidebar windows with darker background
	sidebars = { "qf", "help", "packer" },

	-- Optional: override specific colors
	on_colors = function(colors)
		colors.hint = colors.orange
		colors.error = "#ff0000"
	end,

	-- Optional: override highlights (example: Telescope)
	on_highlights = function(hl, c)
		hl.TelescopeNormal = { bg = c.bg_dark, fg = c.fg_dark }
		hl.TelescopeBorder = { bg = c.bg_dark, fg = c.bg_dark }
	end,
})

-- Configure Solarized Osaka styles
require("solarized-osaka").setup({
	styles = {
		comments = { italic = true },
		keywords = { italic = true },
		functions = {}, -- disable italics for functions
		variables = {},
		sidebars = "normal",
		floats = "normal",
	},
	sidebars = { "qf", "help", "packer" },
})

-- Make it the default colorscheme
vim.schedule(function()
	local ok, _ = pcall(vim.cmd, "colorscheme solarized-osaka")
	if not ok then
		vim.cmd("colorscheme tokyonight") -- fallback
	end
end)

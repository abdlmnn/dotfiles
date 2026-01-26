-- Disable LuaRocks and HeroRocks (Windows fix)
vim.g.lazyvim_rocks = {
	enabled = false,
	hererocks = false,
}
vim.opt.termguicolors = true

-- Match terminal background (optional)
vim.o.background = vim.fn.exists("$COLORFGBG") == 1
		and (vim.env.COLORFGBG:match("^[^;]+") == "15" and "light" or "dark")
	or "dark"

vim.schedule(function()
	local ok, _ = pcall(vim.cmd, "colorscheme solarized-osaka") -- try osaka
	if not ok then
		vim.cmd("colorscheme tokyonight") -- fallback to installed scheme
	end
end)

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"

vim.g.python3_host_prog = "C:/Users/abdul/.pyenv/pyenv-win/versions/3.10.10/python.exe"

vim.opt.updatetime = 200

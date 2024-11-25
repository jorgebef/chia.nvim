local config = require("kanagawa-groove.config")

local M = {}

--- load the colorscheme
function M.load(opts)
	if opts then
		config.extend(opts)
	end

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "kanagawa-groove"
	vim.o.termguicolors = true

	local colors = require("kanagawa-groove.colors").setup({ colors = config.options.colors })
	local highlights = require("kanagawa-groove.highlights").setup(colors, config.options)
	require("kanagawa-groove.highlights").highlight(highlights, config.terminalColors and colors.theme.term or {})
end

M.setup = config.setup

return M

local config = require("chia.config")

local M = {}

--- load the colorscheme
function M.load(opts)
	if opts then
		config.extend(opts)
	end

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "chia"
	vim.o.termguicolors = true

	local colors = require("chia.colors").setup({ colors = config.options.colors })
	local highlights = require("chia.highlights").setup(colors, config.options)
	require("chia.highlights").highlight(highlights, config.terminalColors and colors.theme.term or {})
end

M.setup = config.setup

return M

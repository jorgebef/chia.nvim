local M = {}

---@type KanagawaHighlightsFn
function M.get(colors, opts)
	local color = require("kanagawa-groove.lib.color")
	local theme = colors.theme
	local palette = colors.palette

	return {
		MiniIndentscopeSymbol = { fg = palette.sumiInk6 },
		MiniIndentscopeSymbolOff = { fg = palette.sumiInk6 },
	}
end

return M

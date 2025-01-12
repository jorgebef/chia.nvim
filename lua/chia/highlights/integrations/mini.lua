local M = {}

---@type KanagawaHighlightsFn
function M.get(colors, opts)
	local color = require("chia.lib.color")
	local theme = colors.theme
	local palette = colors.palette

	return {
		MiniIndentscopeSymbol = { fg = palette.sumiInk7 },
		MiniIndentscopeSymbolOff = { fg = palette.sumiInk4 },
	}
end

return M

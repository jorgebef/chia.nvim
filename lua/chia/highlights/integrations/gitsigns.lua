local M = {}

---@type KanagawaHighlightsFn
function M.get(colors, opts)
	local color = require("chia.lib.color")
	local theme = colors.theme
	local palette = colors.palette

	return {
		-- Gitsigns
		GitSignsAdd = { fg = theme.vcs.added, bg = theme.ui.bg_gutter },
		GitSignsChange = { fg = theme.vcs.changed, bg = theme.ui.bg_gutter },
		GitSignsDelete = { fg = theme.vcs.removed, bg = theme.ui.bg_gutter },
	}
end

return M

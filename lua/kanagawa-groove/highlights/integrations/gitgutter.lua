local M = {}

---@type KanagawaHighlightsFn
function M.get(colors, opts)
	local color = require("kanagawa-groove.lib.color")
	local theme = colors.theme
	local palette = colors.palette

	return {
		-- Gitgutter
		GitGutterAdd = { link = "GitSignsAdd" },
		GitGutterChange = { link = "GitSignsChange" },
		GitGutterDelete = { link = "GitSignsDelete" },
		GitGutterAddLineNr = { link = "GitSignsAdd" },
		GitGutterChangeLineNr = { link = "GitSignsChange" },
		GitGutterDeleteLineNr = { link = "GitSignsDelete" },
	}
end

return M

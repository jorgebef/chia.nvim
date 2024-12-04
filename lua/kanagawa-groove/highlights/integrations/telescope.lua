local M = {}

---@type KanagawaHighlightsFn
function M.get(colors, opts)
	local color = require("kanagawa-groove.lib.color")
	local theme = colors.theme
	local palette = colors.palette

	return {
		-- Telescope
		TelescopeTitle = { fg = palette.sumiInk0, bg = palette.dragonBlue, bold = true },
		TelescopeBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.float.bg_border },
		-- TelescopeSelection = { link = "CursorLine" },
		TelescopeSelection = { fg = theme.ui.fg, bg = theme.ui.bg_cursorline },
		TelescopeSelectionCaret = { link = "CursorLineNr" },
		TelescopePromptNormal = { bg = theme.ui.bg_p1 },
		TelescopePromptBorder = {
			fg = theme.ui.float.fg_border,
			bg = theme.ui.float.bg_border,
		},
		-- TelescopePromptvBorder = { fg = palette.dragonAsh, bg = theme.ui.bg_m2 },
		TelescopePromptPrefix = { fg = palette.dragonAsh, bg = theme.ui.float.bg },
		TelescopePromptCounter = { bg = theme.ui.bg_p2 },
		TelescopePreviewLine = { bg = theme.ui.bg_p2 },

		TelescopeResultsClass = { link = "Structure" },
		TelescopeResultsStruct = { link = "Structure" },
		TelescopeResultsField = { link = "@field" },
		TelescopeResultsMethod = { link = "Function" },
		TelescopeResultsVariable = { link = "@variable" },
		TeleScopeResultsTitle = {
			fg = palette.sumiInk0,
			bg = palette.dragonOrange,
			bold = true,
		},
		TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.float.bg },
		TelescopeResultsBorder = {
			fg = theme.ui.float.fg_border,
			bg = theme.ui.float.bg_border,
		},
		TeleScopePreviewTitle = { fg = palette.sumiInk0, bg = palette.waveAqua1, bold = true },
		TelescopePreviewNormal = { bg = theme.ui.bg },
		TelescopePreviewBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.bg },
	}
end

return M

local M = {}

---@type KanagawaHighlightsFn
function M.get(colors, opts)
	local color = require("kanagawa-groove.lib.color")
	local theme = colors.theme
	local palette = colors.palette

	return {
		-- NvimTree
		NvimTreeIndentMarker = { fg = theme.ui.indent },
		-- NvimTreeNormal = { link = "Normal" },
		NvimTreeNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p2 },
		NvimTreeNormalFloat = { fg = theme.ui.fg, bg = theme.ui.bg_p2 },
		-- NvimTreeNormalNC = { link = "NvimTreeNormal" },
		NvimTreeNormalNC = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p2 },
		NvimTreeGitDirty = { fg = theme.vcs.changed },
		NvimTreeGitNew = { fg = theme.vcs.added },
		NvimTreeGitDeleted = { fg = theme.vcs.removed },
		NvimTreeGitStaged = { fg = theme.vcs.added },
		NvimTreeSpecialFile = { fg = theme.syn.special1 },
		NvimTreeImageFile = { fg = theme.syn.special2 },
		NvimTreeSymlink = { link = "Type" },
		NvimTreeFolderName = { link = "Directory" },
		NvimTreeExecFile = { fg = theme.syn.string, bold = true },
		NvimTreeRootFolder = { fg = palette.autumnRed, bold = true },
		NvimTreeOpenedFile = { fg = theme.syn.special1, italic = true },
		NvimTreeOpenedFolderName = { fg = palette.dragonBlue },
		NvimTreeWinSeparator = { link = "WinSeparator" },
		NvimTreeWindowPicker = { bg = theme.ui.bg_m1, fg = theme.ui.picker, bold = true },
	}
end

return M

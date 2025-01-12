local colors = require("chia.colors").setup()
local theme = colors.theme

local chia = {}

chia.normal = {
	a = { bg = theme.modes.normal, fg = theme.ui.bg_m1 },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.normal },
	c = { bg = theme.ui.bg_p1, fg = theme.ui.fg_gray },
}

chia.insert = {
	a = { bg = theme.modes.insert, fg = theme.ui.bg },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.insert },
}

chia.command = {
	a = { bg = theme.modes.command, fg = theme.ui.bg },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.command },
}

chia.visual = {
	a = { bg = theme.modes.visual, fg = theme.ui.bg },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.visual },
}

chia.replace = {
	a = { bg = theme.modes.replace, fg = theme.ui.bg },
	b = { bg = theme.ui.bg_p2, fg = theme.modes.replace },
}

chia.inactive = {
	a = { bg = theme.ui.bg_m1, fg = theme.ui.fg_gray },
	b = { bg = theme.ui.bg_m1, fg = theme.ui.fg_gray, gui = "bold" },
	c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_gray },
}

if vim.g.chia_lualine_bold then
	for _, mode in pairs(chia) do
		mode.a.gui = "bold"
	end
end

return chia

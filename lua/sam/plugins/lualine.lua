-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- local lualine_challenger = require("lualine.themes.challenger_deep")
lualine.setup({
	options = {
		theme = "challenger_deep",
	},
})


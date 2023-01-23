-- wip
local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local theme_ok, alpha_theme = pcall(require, "alpha.themes.startify")
if not theme_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
	[[   _____                    _______                ]],
	[[  / ___/____ _____ ___     / ____(_)___ ____  ____ ]],
	[[  \__ \/ __ `/ __ `__ \   / __/ / / __ `/ _ \/ __ \]],
	[[ ___/ / /_/ / / / / / /  / /___/ / /_/ /  __/ / / /]],
	[[/____/\__,_/_/ /_/ /_/  /_____/_/\__, /\___/_/ /_/ ]],
	[[                                /____/             ]],
	[[           vim config 0.1 (soft launch ig)         ]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC<CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- alpha.setup(dashboard.opts)
alpha.setup(alpha_theme.config)

local status, silicon = pcall(require, "silicon")
if not status then
	return
end

silicon.setup({
	font = "mononoki Nerd Font Mono=16",
	theme = "Sublime Snazzy",
})

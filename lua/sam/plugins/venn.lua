-- import gitsigns plugin safely
local setup, venn = pcall(require, "venn")
if not setup then
	return
end

-- configure/enable gitsigns
venn.setup()

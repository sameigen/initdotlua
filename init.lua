local augroup = vim.api.nvim_create_augroup
local k0 = augroup("k0", {})
local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 40,
		})
	end,
})

autocmd({ "BufWritePre" }, {
	group = k0,
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

require("sam.plugins-setup")
require("sam.core.options")
require("sam.core.keymaps")
require("sam.core.colorscheme")
require("sam.plugins.comment")
require("sam.plugins.nvim-tree")
require("sam.plugins.lualine")
require("sam.plugins.bufferline")
require("sam.plugins.telescope")
require("sam.plugins.nvim-cmp")
require("sam.plugins.lsp.mason")
require("sam.plugins.lsp.lspsaga")
require("sam.plugins.lsp.lspconfig")
require("sam.plugins.lsp.null-ls")
require("sam.plugins.autopairs")
require("sam.plugins.treesitter")
require("sam.plugins.gitsigns")
require("sam.plugins.silicon")

-- require("sam.plugins.venn")

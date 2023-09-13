local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	highlight = {
		enable = true,
		disable = {},
	},

	indent = {
		enable = true,
		disable = {},
	},

	ensure_installed = {
		"lua",
		"go",
		"c",
		"cpp",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"json",
		"markdown",
		"markdown_inline",
	},

	autotag = {
		enable = true,
	},
})

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
	},

	ensure_installed = {
		"lua",
		"go",
		"c",
		"cpp",
		"zig",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"json",
		"markdown",
		"markdown_inline",
		"fish",
	},

	autotag = {
		enable = true,
	},
})

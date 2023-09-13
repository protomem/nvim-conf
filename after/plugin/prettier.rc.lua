local status, prettier = pcall(require, "prettier")
if not status then
	return
end

prettier.setup({
	bin = "prettierd", -- or `prettier`
	filetypes = {
		"json",
		"html",
		"css",
		"scss",
		"less",
		"javascriptreact",
		"javascript",
		"typescript",
		"typescriptreact",
	},
})

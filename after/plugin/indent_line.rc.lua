local status, indent_line = pcall(require, "indent_blankline")
if not status then
	return
end

vim.cmd([[highlight IndentBlanklineIndent1 guifg=#586e75 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent2 guifg=#fdf6e3 gui=nocombine]])
vim.cmd([[highlight IndentBlanklineIndent3 guifg=#eee8d5 gui=nocombine]])

indent_line.setup({
	show_current_context = true,
	char_highlight_list = { "IndentBlanklineIndent1" },
	context_highlight_list = { "IndentBlanklineIndent3" },
	show_trailing_blankline_indent = false,
})

local status, saga = pcall(require, "lspsaga")
if (not status) then return end

saga.setup {}


-- Mappings
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set('n', '<C-j>', '<cmd>Lspsaga diagnostic_jump_next<cr>', opts)
keymap.set('n', 'K', '<cmd>Lspsaga hover_doc<cr>', opts)
keymap.set('n', 'gd', '<cmd>Lspsaga lsp_finder<cr>', opts)
keymap.set('n', '<C-K>', '<cmd>Lspsaga signature_help<cr>', opts)
keymap.set('n', 'gp', '<cmd>Lspsaga preview_definition<cr>', opts)
keymap.set('n', 'gr', '<cmd>Lspsaga rename<cr>', opts)


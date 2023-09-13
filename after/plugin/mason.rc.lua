local status_m, mason = pcall(require, "mason")
if (not status_m) then return end

local status_mc, mason_lspconfig = pcall(require, "mason-lspconfig")
if (not status_mc) then return end

-- TODO: Configure

mason.setup {}

mason_lspconfig.setup {}

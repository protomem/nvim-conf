local status, guard = pcall(require, "guard")
if (not status) then return end

local ft = require("guard.filetype")

-- Golang
ft("go"):fmt({ cmd = "gofumpt" }):lint({ cmd = "staticcheck" })


-- TODO: Configure

guard.setup {
    fmt_on_save = true,
    lsp_as_default_formatter = false,
}

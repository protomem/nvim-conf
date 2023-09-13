local status, lualine = pcall(require, "lualine")
if (not status) then return end

-- TODO: Configure

lualine.setup {
    options = {
        icons_enabled = true,
        theme = "solarized_dark",
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
    },
}

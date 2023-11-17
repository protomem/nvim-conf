return {
  -- Mason
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "prettier",
        "css-lsp",
        "gofumpt",
        "goimports",
        "gopls",
        "zls",
        "clangd",
        "clang-format",
      })
    end,
  },
}

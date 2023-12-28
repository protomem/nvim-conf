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
        "typescript-language-server",
        "prettier",
        "css-lsp",
        "gofumpt",
        "goimports",
        "gopls",
        "elixir-ls",
      })
    end,
  },
}

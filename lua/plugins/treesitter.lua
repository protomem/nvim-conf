return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "cmake",
      "make",
      "http",
      "c",
      "cpp",
      "fish",
      "gitignore",
      "go",
      "fish",
      "sql",
      "scss",
      "elixir",
      "heex",
      "eex",
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)

    -- MDX
    vim.filetype.add({
      extension = {
        mdx = "mdx",
      },
    })

    vim.treesitter.language.register("markdown", "mdx")
  end,
}

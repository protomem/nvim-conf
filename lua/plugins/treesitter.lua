return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "cmake",
      "make",
      "http",
      "cpp",
      "zig",
      "fish",
      "gitignore",
      "go",
      "fish",
      "sql",
      "scss",
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

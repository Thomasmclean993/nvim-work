return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").install({
      "bash",
      "eex",
      "elixir",
      "heex",
      "javascript",
      "lua",
      "regex",
      "ruby",
      "typescript",
    })
  end,
}

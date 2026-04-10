return {
  "rebelot/kanagawa.nvim",
  lazy = true,
  config = function()
    require("kanagawa").setup({
      compile = true,
      theme = "dragon",
    })
  end,
  build = function()
    vim.cmd("KanagawaCompile")
  end,
}

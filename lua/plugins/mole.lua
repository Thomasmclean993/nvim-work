return {
  "zion-off/mole.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Mole" },
      },
      ft = { "markdown", "Mole" },
    },
  },
  opts = {},
}

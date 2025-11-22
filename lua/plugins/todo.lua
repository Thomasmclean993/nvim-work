return {
  "micahkepe/todo.nvim",
  cmd = "Todo",

  ---@type todo-nvim.Config
  opts = {
    keys = {
      { "<leader>td", ":Todo<CR>",       mode = "n", desc = "Open Todos scratch file" },
      { "<leader>to", ":Todo Today<CR>", mode = "n", desc = "Open today's Todos" },
    },
  },
}

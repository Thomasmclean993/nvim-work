return {
  "mistweaverco/kulala.nvim",
  keys = {
    { "<leader>cu", desc = "Send request" },
    { "<leader>cs", desc = "Send all requests" },
    { "<leader>cb", desc = "Open scratchpad" },
  },
  ft = { "http", "rest" },
  opts = {
    global_keymaps = true,
    global_keymaps_prefix = "<leader>C",
    kulala_keymaps_prefix = "",
  }
}

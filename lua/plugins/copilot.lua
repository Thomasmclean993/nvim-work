return {
  -- Main Copilot plugin
  "zbirenbaum/copilot.lua",
  dependencies = {
    -- The completion integration plugin
    {
      "zbirenbaum/copilot-cmp",
      config = function()
        require("copilot_cmp").setup()
      end,
    },
  },

  opts = {
    suggestion = {
      enabled = not vim.g.ai_cmp,
      auto_trigger = true,
      hide_during_completion = vim.g.ai_cmp,
      keymap = {
        accept = "<C-A>", -- Accept suggestion
        next = "<C-J>",   -- Next Copilot suggestion
        prev = "<C-K>",   -- Previous Copilot suggestion
      },
    },
    panel = { enabled = false },
    filetypes = {
      markdown = true,
      elixir = true,
      ruby = true,
      go = true,
      lua = true,
      help = true,
    },
  },

  -- Optional: ensure Copilot starts after CMP
  event = "InsertEnter",
  config = function(_, opts)
    require("copilot").setup(opts)
  end,
}

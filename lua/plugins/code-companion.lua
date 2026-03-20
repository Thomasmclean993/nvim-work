return {
  "olimorris/codecompanion.nvim",
  version = "^18.0.0",
  enabled = false,
  opts = {
    display = {
      action_palette = {
        width = 95,
        height = 10,
        prompt = "Prompt ", -- Prompt used for interactive LLM calls
        provider = "fzf_lua", -- Can be "default", "telescope", "fzf_lua", "mini_pick" or "snacks". If not specified, the plugin will autodetect installed providers.
        opts = {
          show_preset_actions = true, -- Show the preset actions in the action palette?
          show_preset_prompts = true, -- Show the preset prompts in the action palette?
          title = "CodeCompanion actions", -- The title of the action palette
        },
      },
    },
    interactions = {
      chat = {
        adapter = "copilot",
        model = "claude-4.5",
      },
      inline = {
        adapter = "copilot",
        model = "claude-4.5",
        accept_change = {
          modes = { n = "cca" },
          description = "Accept the Suggested Change? You Cheat!",
        },
      },
    },
  },
  prompts = require("ai.prompts.playbook"),
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}

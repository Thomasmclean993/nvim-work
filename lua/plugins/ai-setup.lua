---lua {lua/plugins/combined_codecompanion.lua}
return {

  "olimorris/codecompanion.nvim",
  version = "^18.0.0",
  opts = {
    display = {
      action_palette = {
        width = 95,
        height = 10,
        prompt = "Prompt ",
        provider = "fzf_lua",
        opts = {
          show_preset_actions = true,
          show_preset_prompts = true,
          title = "CodeCompanion actions",
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

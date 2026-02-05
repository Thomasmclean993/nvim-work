return {
  "olimorris/codecompanion.nvim",
  version = "^18.0.0",
  opts = {
    display = {
      action_palette = {
        width = 95,
        height = 10,
        prompt = "Prompt ", -- Prompt used for interactive LLM calls
        provider = "default", -- Can be "default", "telescope", "fzf_lua", "mini_pick" or "snacks". If not specified, the plugin will autodetect installed providers.
        opts = {
          show_preset_actions = true, -- Show the preset actions in the action palette?
          show_preset_prompts = true, -- Show the preset prompts in the action palette?
          title = "CodeCompanion actions", -- The title of the action palette
        },
      },
    },
    interactions = {
      chat = {
        adapter = "ollama",
        model = "codellama",
      },
      inline = {
        adapter = "ollama",
        model = "codellama",
        accept_change = {
          modes = { n = "cca" },
          description = "Accept the Suggested Change? You Cheat!",
        },
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}

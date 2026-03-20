return {
  "saghen/blink.cmp",
  enabled = false,
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    -- (Optional) If you’re using LuaSnip/friendly-snippets, keep this:
    -- snippets = { preset = "luasnip" },

    -- (Optional) Similar menu behavior to `menuone,noinsert,noselect`
    completion = {
      list = { selection = { preselect = false } },
      documentation = { auto_show = false },
    },

    keymap = {
      -- Keep your Tab flow, but add confirm first
      ["<Tab>"] = {
        "select_and_accept", -- ① confirm when a completion is available
        "snippet_forward", -- ② jump to next snippet field
        function() -- ③ Sidekick next edit suggestion
          return require("sidekick").nes_jump_or_apply()
        end,
        function() -- ④ Neovim inline completion (native)
          return vim.lsp.inline_completion.get()
        end,
        "fallback", -- ⑤ default insertion / tab
      },

      -- Recommended companions for a smooth UX
      ["<S-Tab>"] = { "snippet_backward", "select_prev", "fallback" },
      ["<C-Space>"] = { "show", "show_documentation" },
      ["<C-e>"] = { "hide" },
      ["<C-n>"] = { "select_next" },
      ["<C-p>"] = { "select_prev" },
    },

    -- (Optional) If you also want Copilot first, enable its provider and put it first:
    -- sources = {
    --   default = { "copilot", "lsp", "snippets", "buffer", "path" },
    --   providers = {
    --     copilot = {
    --       name = "copilot",
    --       module = "blink-copilot",
    --       async = true,
    --       score_offset = 100,
    --       opts = { max_completions = 3, debounce = 300 },
    --     },
    --   },
    -- },
  },
}

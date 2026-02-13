-- lua/plugins/copilot.lua
return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    opts = {
      -- Recommended minimal setup
      suggestion = { enabled = true, auto_trigger = true, debounce = 75 },
      panel = { enabled = true },
      filetypes = {
        -- Enable/disable per filetype if needed
        markdown = true,
        help = true,
        gitcommit = true,
        yaml = true,
        -- Disable for big or special buffers
        ["*"] = true,
      },
      -- If you're using copilot-lsp for NES, leave copilot.lua for inline suggestions only.
      -- Do not enable its LSP server; copilot-lsp handles that.
    },
    config = function(_, opts)
      require("copilot").setup(opts)

      -- === Keymaps for Copilot ghost text ===
      -- Accept current suggestion
      vim.keymap.set("i", "<C-y>", function()
        require("copilot.suggestion").accept()
      end, { desc = "Copilot: Accept suggestion" })

      -- Cycle suggestions
      vim.keymap.set("i", "<C-j>", function()
        require("copilot.suggestion").next()
      end, { desc = "Copilot: Next suggestion" })

      vim.keymap.set("i", "<C-k>", function()
        require("copilot.suggestion").prev()
      end, { desc = "Copilot: Previous suggestion" })

      -- -- Dismiss current suggestion
      -- vim.keymap.set("i", "<C-Down>", function()
      --   require("copilot.suggestion").dismiss()
      -- end, { desc = "Copilot: Dismiss suggestion" })

      -- Optional: Use <Tab> to accept Copilot only when visible.
      -- This is expr-mapped to avoid breaking your normal <Tab> behavior (and works with nvim-cmp).
      -- vim.keymap.set("i", "<Tab>", function()
      --   local sug = require("copilot.suggestion")
      --   if sug.is_visible() then
      --     sug.accept()
      --     return ""
      --   end
      --   return "<Tab>"
      -- end, { expr = true, desc = "Copilot: Accept suggestion (Tab when visible) })
    end,
  },
}

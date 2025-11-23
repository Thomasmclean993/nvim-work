-- Alternative: install github/copilot.vim via lazy.nvim
return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      enabled = not vim.g.ai_cmp,
      auto_trigger = true,
      hide_during_completion = vim.g.ai_cmp,
      keymap = {
        accept = "<Tab>", -- Accept suggestion
        next = "<S-Down>", -- Next Copilot suggestion
        prev = "<S-Up>", -- Previous Copilot suggestion
      },
    },
    panel = { enabled = false },
    filetypes = {
      markdown = true,
      elixir = false,
      ruby = true,
      go = true,
      lua = true,
      help = true,
    },
  },
}

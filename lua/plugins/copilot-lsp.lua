-- lua/plugins/copilot_lsp.lua
return {
  {
    "copilotlsp-nvim/copilot-lsp",
    opts = {
      -- Basic defaults; adjust as you like
      server = {
        capabilities = vim.lsp.protocol.make_client_capabilities(),
        -- You can pass on_attach or other LSP options here
        -- on_attach = function(client, bufnr) ... end,
      },
    },
    config = function(_, opts)
      require("copilot-lsp").setup(opts)
      -- Optionally integrate with mason-lspconfig if you want to manage it there.
    end,
    event = "VeryLazy",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
  },
}

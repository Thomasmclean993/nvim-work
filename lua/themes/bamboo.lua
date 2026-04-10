return {
  "ribru17/bamboo.nvim",
  lazy = true,
  config = function()
    require("bamboo").setup({
      -- optional configuration here
      style = "light", -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
    })
  end,
}

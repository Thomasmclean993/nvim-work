return {
  "ribru17/bamboo.nvim",
  lazy = false,
  -- priority = 0,
  config = function()
    require("bamboo").setup({
      -- optional configuration here
      style = "light", -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
    })
    require("bamboo").load()
  end,
}

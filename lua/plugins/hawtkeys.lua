--plugin for finding and suggesting memorable and easy-to-press keys for your nvim shortcuts. It takes into consideration keyboard layout, easy-to-press combinations and memorable phrases, and excludes already mapped combinations to provide you with suggested keys for your commands
--
--
return {
  "tris203/hawtkeys.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = {
    -- an empty table will work for default config
    --- if you use functions, or whichkey, or lazy to map keys
    --- then please see the API below for options
  },
}

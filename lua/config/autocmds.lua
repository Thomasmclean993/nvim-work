-- Autocmds are automatically loaded on the VeryLazy event (LazyVim default)
-- Add any additional autocmds here with `vim.api.nvim_create_autocmd`

-- 1) Create an augroup so you can manage/clear easily
local grp = vim.api.nvim_create_augroup("UserOnOpenCmds", { clear = true })

-- 2) Enable Treesitter highlight per buffer on open/new
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
  group = grp,
  desc = "Enable Treesitter highlight on buffer open/new (buffer-local)",
  callback = function(args)
    -- Skip special/readonly buffers (help, quickfix, etc.)
    local bt = vim.bo[args.buf].buftype
    if bt ~= "" then
      return
    end

    -- Ensure a filetype exists; some brand-new buffers may not have one yet
    if vim.bo[args.buf].filetype == "" then
      return
    end

    -- Prefer buffer-local enable; guard in case Treesitter isn't available
    pcall(vim.cmd, "TSBufEnable highlight")
  end,
})

-- (Optional) 3) In case you want to catch when filetype gets set (brand new files)
-- vim.api.nvim_create_autocmd("FileType", {
--   group = grp,
--   desc = "Enable Treesitter highlight when filetype is detected",
--   callback = function(args)
--     local bt = vim.bo[args.buf].buftype
--     if bt ~= "" then return end
--     pcall(vim.cmd, "TSBufEnable highlight")
--   end,
-- })

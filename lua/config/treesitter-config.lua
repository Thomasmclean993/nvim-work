-- treesitter-config.lua
-- Uses the nvim-treesitter main branch API (Neovim 0.12+).
-- Highlighting is provided by Neovim's built-in vim.treesitter;
-- nvim-treesitter provides the parsers and queries.
-- Parsers are installed/updated via :TSUpdate (run automatically on :Lazy sync).

-- Enable treesitter highlighting and indentation for every filetype
-- that has a parser available. vim.treesitter.start() is a no-op when
-- no parser is installed, so it's safe to call unconditionally.
local function enable_ts()
  pcall(vim.treesitter.start)
  vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
end

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
  callback = enable_ts,
})

-- Apply to the current buffer if FileType already fired before this module
-- was loaded (e.g. when Neovim is started with a filename argument).
if vim.bo.filetype ~= "" then
  enable_ts()
end

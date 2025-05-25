local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set(
  "n",
  "<leader>r",
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set(
  "n",
  "K",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({'hover', 'action'})
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set(
  "n",
  "<leader>mu",
  function()
    vim.cmd.RustLsp { 'moveItem',  'up' }
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set(
  "n",
  "<leader>md",
  function()
    vim.cmd.RustLsp { 'moveItem',  'down' }
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set(
  "n",
  "<leader>jl",
  function()
    vim.cmd.RustLsp('joinLines')
  end,
  { silent = true, buffer = bufnr }
)

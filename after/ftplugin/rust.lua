local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set(
  "n",
  "<leader>a",
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set(
  'n',
  '<leader>rd',
  function()
    vim.cmd.RustLsp('renderDiagnostic')
  end,
  { desc = '[R]ust [D]iagnostics rendering', buffer = bufnr, silent = true }
)

vim.keymap.set(
  'n',
  '<leader>ha',
  function()
    vim.cmd.RustLsp { 'hover', 'actions' }
  end,
  {
    desc = '[H]over [A]ctions for rust - run twice to open in new tab',
    buffer = bufnr,
    silent = true
  }
)


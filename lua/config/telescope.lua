pcall(require('telescope').load_extension, 'fzf')
pcall(require('telescope').load_extension, 'ui-select')

vim.keymap.set('n', '<leader>st', "<cmd>Telescope todo-comments todo<CR>", { desc = '[ ] Find existing buffers' })


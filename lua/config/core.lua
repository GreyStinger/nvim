vim.opt.cc = "81"
vim.opt.cursorline = true
vim.opt.ruler = true
vim.opt.autoindent = true
vim.opt.encoding = 'utf-8'
vim.opt.guifont = 'JetBrainsMono Nerd Font:h12'
vim.opt.background = "dark"
vim.opt.hidden = true
vim.opt.hlsearch = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', leadmultispace = '·┊' }
vim.opt.list = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 2
vim.opt.sidescrolloff = 8
vim.opt.showmode = true -- Dont show mode since we have a statusline
vim.opt.title = true
vim.opt.wildmenu = true
vim.opt.signcolumn = "yes:2" -- Always show the signcolumn
vim.opt.smoothscroll = true
vim.opt.shiftwidth = 4
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.spelllang = { "en" }
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
vim.opt.undolevels = 10000
vim.opt.undofile = true
vim.opt.errorbells = false
vim.opt.visualbell = true
vim.opt.laststatus = 2
vim.opt.foldenable = false

vim.cmd("filetype plugin on")
vim.cmd("filetype plugin indent on")

vim.keymap.set("n", "<leader>q", function() vim.cmd("q") end, { noremap = true })
vim.keymap.set("n", "<Esc>", function() vim.cmd("nohlsearch") end)

-- vim.opt.termguicolors = true
-- vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard

-- vim.opt.wildmode = "longest,list"
-- vim.opt.foldlevel = 99
-- vim.opt.foldtext = ""

-- vim.opt.syntax = "on"

-- vim.opt_global.completeopt = { "menuone", "noinsert", "noselect" }
-- 
-- -- Terminal mode options
-- vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })
-- 
-- local map = vim.keymap.set
-- 
-- -- Tab Management
-- map("n", "<M-l>", "<cmd>tabnext<CR>", {noremap=true, desc="Navigate Tab Right"})
-- map("n", "<M-h>", "<cmd>tabNext<CR>", {noremap=true, desc="Navigate Tab Left"})
-- 
-- -- Buffer execute singular
-- map("n", "<leader>bd", function()
--   if vim.bo.modified then
--     print("Buffer has unsaved changes")
--   else
--     vim.cmd('bdelete')
--   end
-- end, { noremap = true, silent = true })
-- 
-- -- Fix markdown indentation settings
-- vim.g.markdown_recommended_style = 0


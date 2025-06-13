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
vim.opt.title = false -- tmux makes it far too long
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
vim.opt.clipboard = "unnamedplus"

vim.cmd("filetype plugin on")
vim.cmd("filetype plugin indent on")

vim.keymap.set("n", "<leader>q", function() vim.cmd("q") end, { noremap = true })
vim.keymap.set("n", "<Esc>", function() vim.cmd("nohlsearch") end)

local function format_saving_pos(formatter)
  local save_view = vim.fn.winsaveview()
  vim.cmd('%! ' .. formatter)  -- Execute formatter on entire buffer
  vim.fn.winrestview(save_view)
end

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'nix',
  callback = function(args)
    vim.keymap.set('n', '<leader>ff', function()
      format_saving_pos('nixfmt')
    end, {
      silent = true,
      buffer = args.buf,  -- map only to local buffer
      desc = "[F]ormat [F]ile"
    })
  end
})

-- vim.opt.termguicolors = true
-- vim.opt_global.completeopt = { "menuone", "noinsert", "noselect" }
-- 
-- -- Terminal mode options
-- vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true })

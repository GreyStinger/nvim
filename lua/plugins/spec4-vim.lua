return {
  {
    "tpope/vim-sleuth",
    lazy = false,
  },
  {
    "farmergreg/vim-lastplace",
    lazy = false,
  },
  {
    "tpope/vim-commentary",
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "machakann/vim-highlightedyank",
    init = function()
      vim.g.highlightedyank_highlight_duration  = 100
      vim.g.highlightedyank_highlight_in_visual = 100
    end,
    lazy = false,
  }
}

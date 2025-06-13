return {
  { "tpope/vim-sleuth", lazy = false },
  { "farmergreg/vim-lastplace", lazy = false },
  { "tpope/vim-commentary", event = "BufReadPost" },
  { "tpope/vim-surround", event = "BufReadPost" },
  { "tpope/vim-fugitive", event = "VeryLazy" }, {
    "machakann/vim-highlightedyank",
    event = "BufReadPost",
    init = function()
      vim.g.highlightedyank_highlight_duration = 100
      vim.g.highlightedyank_highlight_in_visual = 100
    end
  }, { "chentoast/marks.nvim", event = "BufReadPost", opts = {} }, {
    "RaafatTurki/hex.nvim",
    keys = {
      {
        "<leader>hd",
        function() require("hex").dump() end,
        desc = "Switch to hex view"
      }, {
        "<leader>ha",
        function() require("hex").assemble() end,
        desc = "Switch to normal view"
      }, {
        "<leader>ht",
        function() require("hex").toggle() end,
        desc = "Switch between hex and normal views"
      }
    }
  }
}

return {
  -- { "wakatime/vim-wakatime", lazy = false }, 
  {
    "Hashino/doing.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "<leader>da", function() require("doing").add() end, {} },
      { "<leader>dn", function() require("doing").done() end, {} },
      { "<leader>de", function() require("doing").edit() end, {} }
    }
  }, {
    'stevearc/conform.nvim',
    event = "VeryLazy",
    opts = function()
      local formatters_by_ft = {
        lua = { "lua-format" },
        nix = { "nixfmt" },
        python = { "autopep8" },
        rust = { "rustfmt", lsp_format = "fallback" }
      }

      for _, ft in ipairs({ "c", "h", "cc", "cpp", "hpp", "cxx", "hxx" }) do
        formatters_by_ft[ft] = { "clang-format" }
      end

      return {
        formatters_by_ft = formatters_by_ft,
        formatters = {
          ["lua-format"] = {
            prepend_args = {
              "--indent-width=2", "--tab-width=2",
              "--continuation-indent-width=2", "--spaces-inside-table-braces"
            }
          }
        }
      }
    end,
    keys = {
      {
        "<leader>ff",
        function() require("conform").format({ async = true }) end,
        mode = "",
        desc = "[F]ormat [F]ile Buffer"
      }
    }
  }, {
    "ej-shafran/compile-mode.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "m00qek/baleia.nvim", tag = "v1.3.0" },
      config = function()
        ---@type CompileModeOpts
        vim.g.compile_mode = {
          baleia_setup = true

          -- to make `:Compile` replace special characters (e.g. `%`) in
          -- the command (and behave more like `:!`), add:
          -- bang_expansion = true,
        }
      end
    }
  }
}

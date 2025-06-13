return {
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      return {
        servers = {
          clangd = { settings = {} },
          nixd = { settings = {} },
          lua_ls = {
            settings = { Lua = {} },
            on_init = function(client)
              if client.workspace_folders then
                local path = client.workspace_folders[1].name
                if path ~= vim.fn.stdpath('config') and
                  (vim.uv.fs_stat(path .. '/.luarc.json') or
                    vim.uv.fs_stat(path .. '/.luarc.jsonc')) then
                  return
                end
              end

              client.config.settings.Lua =
                vim.tbl_deep_extend('force', client.config.settings.Lua, {
                  runtime = {
                    version = 'LuaJIT',
                    path = { 'lua/?.lua', 'lua/?/init.lua' }
                  },
                  workspace = {
                    checkThirdParty = false,
                    library = { vim.env.VIMRUNTIME }
                  }
                })
            end
          }
        }
      }
    end,
    config = function(_, opts)
      for server, config in pairs(opts.servers) do
        vim.lsp.enable(server)
        vim.lsp.config(server, config)
      end
    end,
    keys = {}
  }
}

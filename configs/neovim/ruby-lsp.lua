return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          -- Tell ruby-lsp to use your existing bundle instead of composing its own
          settings = {
            rubyLsp = {
              bundleGemfile = true,
            },
          },
          cmd = (function()
            local path = vim.fn.system("mise which ruby-lsp"):gsub("%s+$", "")
            if vim.v.shell_error ~= 0 or path == "" then
              vim.notify("ruby-lsp not found via `mise which ruby-lsp`", vim.log.levels.ERROR)
              return { "ruby-lsp" } -- fallback
            end
            return { path }
          end)(),
        },
      },
    },
  },
}

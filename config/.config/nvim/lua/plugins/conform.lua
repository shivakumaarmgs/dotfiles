-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      json = { { "prettierd", "prettier" } },
      go = { 'goimports', 'goimports-reviser', 'gofumpt', 'golines' },
    },
  },
}

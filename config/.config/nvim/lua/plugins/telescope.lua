-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<C-p>",
        LazyVim.pick("find_files", { { find_command = { "rg", "--files", "--hidden", "-g", "!.git", "--iglob" } } }),
        desc = "Custom",
      },
    },
  },
}

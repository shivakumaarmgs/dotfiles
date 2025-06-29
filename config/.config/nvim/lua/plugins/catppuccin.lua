return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "LazyVim/LazyVim",
    -- opts via function to manually merge fields with defaults
    opts = function(_, opts)
      opts.colorscheme = "catppuccin"
    end,
  },
}

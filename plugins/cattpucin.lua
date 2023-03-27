return {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {
        no_italic = true,
      }
    end,
}

return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      -- override colors
      on_colors = function (colors)
        colors.fg_gutter = "#b2b8cf"
        colors.comment = "#b2b8cf"
      end
    },
  },
}

return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        g = {
          j = { "<cmd>Gitsigns next_hunk<cr>", "Next hunk" },
          k = { "<cmd>Gitsigns prev_hunk<cr>", "Previous hunk" },
          p = { "<cmd>Gitsigns preview_hunk_inline<cr>", "Preview hunk inline" },
          r = { "<cmd>Gitsigns reset_hunk<cr>", "Reset hunk" },
          l = { "<cmd>Gitsigns blame_line<cr>", "Blame line" },
        },
        c = {
          w = { "<cmd>Telescope diagnostics<cr>", "File diagnostics (telescope)" },
        },
        h = { "<cmd>noh<cr><cmd>Noice dismiss<cr>", "Clear highlights and notifications" },
      }
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)
      wk.register(opts.defaults, { prefix = "<leader>" })
    end
  }
}

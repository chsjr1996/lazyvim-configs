return {
  {
    "folke/noice.nvim",
    --@type NoiceConfig
    opts = {
      lsp = {
        signature = {
          auto_open = {
            trigger = false
          }
        }
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "lines" }
            }
          },
          opts = { skip = true },
        }
      }
    }
  }
}

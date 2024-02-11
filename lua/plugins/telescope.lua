return {
  {
    "telescope.nvim",
    dependencies = {
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "nvim-telescope/telescope-file-browser.nvim",
    },
    config = function(_, opts)
      local telescope = require("telescope")
      opts.pickers = {
        find_files = {
          theme = "dropdown",
          hidden = false,
          previewer = false,
        },
        lsp_definitions = {
          file_ignore_patterns = { "index.d.ts" },
        },
        buffers = {
          sort_lastused = true,
          theme = "dropdown",
          previewer = false,
        },
      }
      opts.extensions = {
        file_browser = {
          theme = "dropdown",
          hidden = false,
          previewer = false,
        }
      }
      telescope.setup(opts)
			require("telescope").load_extension("fzf")
			require("telescope").load_extension("file_browser")
    end
  }
}

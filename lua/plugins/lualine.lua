return {
  {
    "nvim-lualine/lualine.nvim",
    -- @type LuaLine
    opts = {
      options = {
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_z = {}
      }
    }
  }
}

return {
  "daschw/leaf.nvim",
  priority = 1000,
  lazy = true,
  config = function()
    local transparent = {
      Normal = { bg = "none" },
      Cursor = { bg = "#000000", fg = "#e1e4dc" },
      NormalNC = { bg = "none" },
      NormalFloat = { link = "Normal" },
      FloatBorder = { link = "Normal" },
      TabLineFill = { link = "Normal" },
      WinBar = { link = "Normal" },
      WinBarNC = { link = "Normal" },
      WinSeparator = { fg = "#404040" },
      CursorLineFold = { link = "Normal" },
      CursorLineSign = { link = "Normal" },
      FoldColumn = { bg = "none", fg = "#666666" },
      SignColumn = { link = "Normal" },
      StatusLine = { bg = "none" },
      CursorLine = { bg = "none" },
      Comment = { fg = "#696969" },
      CmpDocumentation = { bg = "none" },
      CmpDocumentationBorder = { bg = "none" },
      snacksDashboardDir = { link = "Comment" },
      NotifyBackground = { link = "Normal" },
      RenderMarkdownCode = { bg = "#d6d6d6" },
    }
    require("leaf").setup {
      theme = "light",
      -- theme = "dark",
      overrides = transparent,
    }
    -- vim.cmd.colorscheme "leaf"
  end,
}

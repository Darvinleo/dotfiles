-- ~/.config/nvim/lua/plugins/colorscheme.lua
local function ColorMyPencils(color)
  color = color or "rose-pine-moon"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        disable_background = true,
        styles = {
          italic = false,
        },
        integrations = {
          neogit = true,
          diffview = true,
        },
      })
      ColorMyPencils("rose-pine-moon")
    end,
  },

  {
    "folke/tokyonight.nvim",
    opts = {
      style = "storm",
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        sidebars = "dark",
        floats = "dark",
      },
    },
  },

  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      terminal_colors = true,
      undercurl = true,
      bold = true,
      strikethrough = true,
      inverse = true,
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      transparent_mode = false,
    },
  },

  { "erikbackman/brightburn.vim", lazy = true },
}

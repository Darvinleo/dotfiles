return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      float = {
        focusable = false,
        style = "minimal",
        border = "none",
        source = "always",
        header = "",
        prefix = "",
      },
      virtual_text = {
        prefix = "●",
        spacing = 2,
      },
      update_in_insert = false,
      severity_sort = true,
    },
  },
}

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TsUpdate",
  config = function()
    -- treesitter
    local treeSConfig = require("nvim-treesitter.configs")
    treeSConfig.setup({
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}

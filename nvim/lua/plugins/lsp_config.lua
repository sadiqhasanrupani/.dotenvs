return {

  -- mason setup
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },

  -- mason lsp setup
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
      ensure_installed = { "gopls", "tailwindcss" },
    },
  },

  -- neo vim lsps setup
  {
    "neovim/nvim-lspconfig",
    -- opts = {
    --   servers = {
    --     tailwindcss = {},
    --   },
    -- },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.ts_ls.setup({ capabilities = capabilities })
      lspconfig.vuels.setup({ capabilities = capabilities })
      lspconfig.dockerls.setup({ capabilities = capabilities })
      lspconfig.docker_compose_language_service.setup({ capabilities = capabilities })
      lspconfig.sqlls.setup({ capabilities = capabilities })
      lspconfig.cssls.setup({ capabilities = capabilities })
      lspconfig.gopls.setup({ capabilities = capabilities })
      lspconfig.tailwindcss.setup({ capabilities = capabilities })

      -- lspconfig.ast_grep.setup({})
      -- lspconfig.zls.setup({})
      -- lspconfig.biome.setup({})

      -- keybindings for lsp
      require("keymaps.lsp-keybinds")

    end,
  },

  -- comment setup

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
}

return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.diagnostics.codespell,
        null_ls.builtins.diagnostics.commitlint,
        null_ls.builtins.diagnostics.gitlint,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,

        -- for python format
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
      },
    })

    -- keybindings
    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}

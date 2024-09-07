return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
    "catppuccin/nvim",
  },
  config = function()
    -- neo tree configs
    -- vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", {})

    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true, -- This ensures the hidden files are visible
          hide_dotfiles = false, -- Show dotfiles (hidden files starting with a dot)
          hide_gitignored = false, -- Show files ignored by Git
        },
      },
    })

    vim.keymap.set("n", "<C-n>", ":Neotree toggle reveal right<CR>", {})
    vim.keymap.set("n", "<leader>e", ":Neotree focus<CR>", {})
  end,
}

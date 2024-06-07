return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
      },
      indent = { enable = true },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "html",
        "css",
        "vue",
        "markdown",
        "markdown_inline",
        "lua",
        "vimdoc",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          -- TODO: better keymapping for selection( better tranfer to keymaps.lua)
          -- init_selection = "<leader>n",
          -- node_incremental = "<leader>n",
          -- scope_incremental = false,
          -- node_decremental = "<leader>u",
        },
      },
    })
  end,
}

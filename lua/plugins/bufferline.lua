return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  config = function()
    require("bufferline").setup({
      options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        numbers = function(opts)
          return string.format('%s', opts.ordinal)
        end,
        offsets = {
          {
            filetype = "NvimTree",
            text = "TT",
            text_align = "center"
          }
        }
      }
    })
  end
}

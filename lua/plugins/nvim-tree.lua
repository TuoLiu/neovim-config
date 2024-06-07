-- TODO nvim-tree bookmark (add/delete/ move up/ move down)

local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent,  opts('Up'))
  vim.keymap.set('n', '?',     api.tree.toggle_help,            opts('Help'))
  vim.keymap.set('n', 'l',     api.node.open.edit,              opts('Open'))
  vim.keymap.set('n', 'h',     api.node.navigate.parent_close,  opts('Close'))
  end

  return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {

        renderer = {
          icons = {
            glyphs = {
              folder = {
                -- arrow_closed = "", -- arrow when folder is closed
                -- rrow_open = "", -- arrow when folder is open
              },
            }
          }
        },
        -- view
        view = {
          width = 30,
          side = "left",
        },

        -- keymap
        on_attach = my_on_attach
      }
    end,
  }

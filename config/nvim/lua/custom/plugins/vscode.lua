vim.pack.add { 'https://github.com/Mofiqul/vscode.nvim' }

require('vscode').setup {
  -- Enable transparent background
  transparent = true,

  -- Enable italic comment
  italic_comments = true,

  -- Enable italic inlay type hints
  italic_inlayhints = true,

  -- Underline `@markup.link.*` variants
  underline_links = true,

  -- Disable nvim-tree background color
  disable_nvimtree_bg = true,

  -- Apply theme colors to terminal
  terminal_colors = false,

  -- Override colors (see ./lua/vscode/colors.lua)
  color_overrides = {
    -- vscLineNumber = '#FFFFFF',
  },

  -- Override highlight groups (see ./lua/vscode/theme.lua)
  group_overrides = {
    -- this supports the same val table as vim.api.nvim_set_hl
    -- use colors from this colorscheme by requiring vscode.colors!
  },
}

-- vim.cmd.colorscheme 'vscode'

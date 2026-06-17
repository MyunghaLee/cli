vim.pack.add { 'https://github.com/keaising/im-select.nvim' }

require('im_select').setup {
  default_im_select = 'xkb:us::eng',
  default_command = 'ibus_engine',
  -- put ibus_engine executable in ~.local/bin
  -- contents:
  -- #!/usr/bin/bash
  -- ibus engine $1
}

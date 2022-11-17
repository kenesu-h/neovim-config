vim.cmd('colorscheme sonokai')
vim.g.sonokai_style = 'espresso'

require('lualine').setup({
  options = {
    theme = 'sonokai'
  }
})

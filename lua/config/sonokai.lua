vim.cmd('colorscheme sonokai')
vim.g.sonokai_style = 'espresso'
vim.g.sonokai_disable_italic_comment = 1

require('lualine').setup({
  options = {
    theme = 'sonokai'
  }
})

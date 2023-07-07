require('lualine').setup {
  options = {
    globalstatus = true,
    component_separators = '|',
    section_separators = ''
  },
  sections = {
    lualine_a = { 'buffers' },
    lualine_x = { },
  },
  winbar = {
    lualine_y = {'filename'},
  },
  inactive_winbar = {
    lualine_y = {'filename'},
  }
}


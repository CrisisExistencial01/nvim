-- Configuracion para lualine
require('lualine').setup {
  options = {
    theme = 'horizon',  -- Elige un tema de Lualine
  },
	--[[
  sections = {
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
  },
	]]
	sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = {
      { 'filename', file_status = true, path = 1 },
      'diff',
    },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
  },
  inactive_sections = {
    lualine_a = {'filename'},
    lualine_b = {},
  }
}



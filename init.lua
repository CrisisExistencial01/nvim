-- Instalar Packer.nvim si aún no está instalado
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.api.nvim_command('packadd packer.nvim')
end
require('packer').startup(function()

	-- plugins:
	use 'folke/tokyonight.nvim'
	use 'doronbehar/nvim-fugitive'
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}	
	use {'sudar/vim-arduino-syntax', ft = {'arduino', 'ino'}}
	use {'stevearc/vim-arduino', ft = {'arduino', 'ino'}}
-- Kotlin
	use {'udalov/kotlin-vim'}
end)
-- Cargar y configurar el tema
vim.o.runtimepath = vim.o.runtimepath .. ',/~/.config/nvim/'
vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set mouse=a')
vim.cmd('colorscheme tokyonight-night')
vim.o.laststatus = 0
vim.wo.statusline = ""
vim.o.showtabline = 0
vim.o.showmode=false
vim.o.tabstop = 2
vim.o.shiftwidth = 2
-- Establecer la altura de la ventana de comandos
vim.o.cmdwinheight = 2

-- importa config de lualine
-- No lo importa correctamente --FIX
--require('lualine/lualine-config')
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




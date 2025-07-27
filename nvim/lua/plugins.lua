local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"ap/vim-css-color",
	"jiangmiao/auto-pairs",
	"itchyny/lightline.vim",
	"mattn/emmet-vim",
	"lambdalisue/suda.vim",
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/vim-vsnip',
	{ "catppuccin/nvim",                 name = "catppuccin",   priority = 1000 },
	{ 'nvim-telescope/telescope.nvim',   branch = '0.1.x',      dependencies = { 'nvim-lua/plenary.nvim' } },
	{ "echasnovski/mini.surround",       branch = "main" },
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	{
  		"iamcco/markdown-preview.nvim",
  		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  		build = "cd app && npm install",
  		init = function()
    			vim.g.mkdp_filetypes = { "markdown" }
  		end,
  		ft = { "markdown" },
	},
	{
  		"f-person/auto-dark-mode.nvim",
  		opts = {
    			set_dark_mode = function()
				vim.cmd.colorscheme "catppuccin-frappe"
    			end,

			set_light_mode = function()
				vim.cmd.colorscheme "catppuccin-latte"
	    		end,

			update_interval = 100,

    			fallback = "dark"
  		}
	},
	{
  		"lervag/vimtex",
  		lazy = false,

		config = function ()
			vim.g.vimtex_compiler_latexmk = {
				options = {
					'-verbose',
					'-shell-escape',
					'-file-line-error',
					'-interaction=nonstopmode',
					'-synctex=1'
				}
			}
		end,

  		init = function()
    			vim.g.vimtex_view_method = "skim"
  		end,

		ft = { "latex" }
	}
})

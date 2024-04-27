local fn = vim.fn

-- Automatically install packer plugin
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
   PACKER_BOOTSTRAP = fn.system({
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
   })
   print("Installing packer close and reopen Neovim...")
   vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
   augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
   augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
   return
end

-- Have packer use a popup window
packer.init({
   display = {
      open_fn = function()
	 return require("packer.util").float({ border = "rounded" })
      end,
   },
})


-- Install your plugins here
return packer.startup(function(use)
   use("wbthomason/packer.nvim") -- package manager
   use {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.5",
      requires = {
	 {'nvim-lua/plenary.nvim'},
	 { "nvim-telescope/telescope-live-grep-args.nvim"}
      }--,
      --config = function()
	-- require("telescope").load_extension("live_grep_args")
	-- }
      --end
   } -- fuzzy file finder

   use('nvim-treesitter/nvim-treesitter',
      {run = ':TSUpdate'}
   ) -- a better color parser

   use("ellisonleao/gruvbox.nvim") -- colorscheme
   use ("sainnhe/everforest")
   use('theprimeagen/harpoon') -- allows fast switching between files
   use('mbbill/undotree') -- tracks changes made to files
   use('tpope/vim-fugitive') -- allows the use of Git

   -- LSP Setup.  LSP-Zero simplifies the setup of the LSP servers
   use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
         -- Mason installs and manages the LSP servers, linters and formatters.
	 {"williamboman/mason.nvim"},
         -- mason-lspconfig.nvim bridges the gap between Mason & lspconfig
	 {"williamboman/mason-lspconfig.nvim"},

	 -- LSP Support
	 {'neovim/nvim-lspconfig'},
	 -- Autocompletion
	 {'hrsh7th/nvim-cmp'},
	 {'hrsh7th/cmp-nvim-lsp'},
	 {'L3MON4D3/LuaSnip'},
      }
   }
   use("pocco81/auto-save.nvim") -- auto save files
   use {
      'numToStr/Comment.nvim',
      config = function()
	 require('Comment').setup()
      end
   }


   if PACKER_BOOTSTRAP then

   use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
   })
      required("packer").sync()
   end
end)


--return require('packer').startup(function(use)
	-- Configurations will go
--end)

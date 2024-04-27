local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
   -- see :help lsp-zero-keybindgins
   -- to learn the available actions
   lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
--   ensure_installed = {"pylsp"},
   handlers = {
      lsp_zero.default_setup,
   },
   ui = {
      icons = {
	 package_installed = "✓",
	 package_pending = "➜",
	 package_uninstalled = "✗"
      }
   },
})


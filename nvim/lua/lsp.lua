-- Set up nvim-cmp.
local cmp = require 'cmp'

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end,
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},


	mapping = cmp.mapping.preset.insert({
		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
			{ 'i', 'c' }),
		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
			{ 'i', 'c' }),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),

	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{
			name = 'path',
			option = {
				trailing_slash = true
			}
		},
		{ name = 'buffer' },
		{ name = 'vsnip' }
	}, {
		{ name = 'buffer' },
	})
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' },
	}, {
		{ name = 'cmdline' }
	}),
	matching = { disallow_symbol_nonprefix_matching = false }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig')['rust_analyzer'].setup {
	capabilities = capabilities,
	settings = {
		checkOnSave = {
			command = "clippy",
		},
	},
}

require('lspconfig')['clangd'].setup {
	capabilities = capabilities
}

require('lspconfig')['pyright'].setup {
	capabilities = capabilities
}

require('lspconfig')['lua_ls'].setup {
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },
			},
		},
	},
}

require('lspconfig')['bashls'].setup {
	capabilities = capabilities
}

require('lspconfig')['gopls'].setup {
	capabilities = capabilities
}

require('lspconfig')['jdtls'].setup {
	capabilities = capabilities
}

require("lspconfig")["texlab"].setup({
	capabilities = capabilities,
})

require('lspconfig')['zls'].setup {
  capabilities = capabilities,
}


return {
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			{
				'nvim-telescope/telescope-fzf-native.nvim',
				build = 'make',
			},
		},
		config = function()
			local telescope = require('telescope')
			telescope.load_extension('fzf')

			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
			vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, { desc = 'Telescope document symbols' })
			vim.keymap.set('n', '<leader>lg', builtin.live_grep, { desc = 'Telescope live grep' })
			vim.keymap.set('n', '<leader>bf', builtin.buffers, { desc = 'Telescope buffers' })
			vim.keymap.set('n', '<leader>ht', builtin.help_tags, { desc = 'Telescope help tags' })
			vim.keymap.set('n', '<leader>sh', builtin.search_history, { desc = 'Telescope search history' })
			vim.keymap.set('n', '<leader>of', builtin.oldfiles, { desc = 'Telescope old files' })
		end,
	},
}

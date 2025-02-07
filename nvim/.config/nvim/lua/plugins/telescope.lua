return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-live-grep-args.nvim", version = "^1.0.0" },
      {"smartpde/telescope-recent-files"},
		},
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local builtin = require("telescope.builtin")
			local lga_actions = require("telescope-live-grep-args.actions")

			-- vim.keymap.set("n", "<leader>p", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fg", telescope.extensions.live_grep_args.live_grep_args, {})
			vim.keymap.set("n", "<leader>p", telescope.extensions.recent_files.pick, {})

			telescope.setup({
				defaults = {
					mappings = {
						n = {
							["J"] = actions.preview_scrolling_down,
							["K"] = actions.preview_scrolling_up,
						},
					},
				},
				extensions = {
					live_grep_args = {
						auto_quoting = true,
						mappings = {
							i = {
								["<C-k>"] = lga_actions.quote_prompt(),
								["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
							},
						},
					},
				},
			})

			require("telescope").load_extension("live_grep_args")
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("recent_files")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
		end,
	},
}

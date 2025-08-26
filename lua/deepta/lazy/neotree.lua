return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
		"saifulapm/neotree-file-nesting-config",
	},
	opts = {
		sort_function = function(a, b)
			if a.type == b.type then
				return a.path < b.path
			else
				return a.type > b.type
			end
		end,
		hide_root_node = true,
		retain_hidden_root_indent = true,
		filesystem = {
			filtered_items = {
				show_hidden_count = false,
				hide_dotfiles = true,
				never_show = {
					".DS_Store",
					".git",
					"__pycache__",
					".python-version",
				},
			},
		},
		default_component_configs = {
			indent = {
				with_expanders = true,
				expander_collapsed = "",
				expander_expanded = "",
			},
		},
		event_handlers = {
			{
				event = "file_open_requested",
				handler = function()
					require("neo-tree.command").execute({ action = "close" })
				end,
			},
		},
	},
	config = function(_, opts)
		-- Adding rules from plugin
		opts.nesting_rules =
			require("neotree-file-nesting-config").nesting_rules
		require("neo-tree").setup(opts)
	end,
}

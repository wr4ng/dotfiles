return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true, notify = true },
		explorer = { enabled = true },
		indent = { enabled = true, animate = { enabled = false } },
		picker = {
			enabled = true,
			ui_select = true,
			sources = {
				explorer = {
					auto_close = true,
				},
			},
		},
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		statuscolumn = { enabled = true },
	},
	keys = {
		{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
		{ "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
		{ "<leader>,", function() Snacks.picker.buffers() end, desc = "Buffers" },
		{ "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
		{ "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
		{ "<leader>fp", function() Snacks.picker.commands() end, desc = "Commands" },
		{ "<leader>e", function() Snacks.picker.explorer () end, desc = "Explorer" },
		{ "<leader>n", function() Snacks.picker.notifications() end, desc = "Notification History" },
		--TODO: Add keybindings! https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#-examples
		--TODO: Replace telescope keybinds + neo-tree keybinds
	},
}

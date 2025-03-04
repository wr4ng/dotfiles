return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true, notify = true },
		explorer = { enabled = true },
		indent = { enabled = true, animate = { enabled = false } },
		picker = { enabled = true },
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		statuscolumn = { enabled = true },
	},
	picker = {
		sources = {
			explorer = {
			},
		},
	},
	keys = {
		{ "<leader><space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
		{ "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
		{ "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
		{ "<leader>fg", function() Snacks.picker.grep() end, desc = "Grep" },
		--TODO: Add keybindings! https://github.com/folke/snacks.nvim/blob/main/docs/picker.md#-examples
		--TODO: Replace telescope keybinds + neo-tree keybinds
	},
}

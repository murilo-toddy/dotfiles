return {
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = {
             { "echasnovski/mini.icons", opts = {} },
             { "nvim-tree/nvim-web-devicons", opts = {} }
	},
        lazy = false,

	config = function()
	    require("mini.icons").setup {}
	    require("oil").setup {
                view_options = { show_hidden = true }
	    }
        end,
	keys = {
	    { "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" } },
	    { "<leader>po", "<cmd>lua require('oil').toggle_float()<cr>", { desc = "Open parent directory" } },
	}
    }
}

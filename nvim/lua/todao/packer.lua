vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.4',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    use ({
        "loctvl842/monokai-pro.nvim",
        as = "monokai-pro",
        config = function()
            vim.cmd('colorscheme monokai-pro-machine')
        end
    })

	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use('tpope/vim-dispatch')
	use('vim-test/vim-test')
    use('tiagovla/tokyodark.nvim')
    use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})


-- 	use({
-- 		"Mofiqul/dracula.nvim",
-- 		as = 'dracula',
-- 		config = function()
--             require("dracula").setup({
--               -- customize dracula color palette
--               colors = {
--                 bg = "#121212",
--                 fg = "#C5C8C6",
--                 selection = "#2B3B3A",
--                 comment = "#7D4848",
--                 red = "#CD0000",
--                 orange = "#FFB86C",
--                 yellow = "#F1FA8C",
--                 green = "#50fa7b",
--                 purple = "#BD93F9",
--                 cyan = "#8BE9FD",
--                 pink = "#FF79C6",
--                 bright_red = "#FF6E6E",
--                 bright_green = "#69FF94",
--                 bright_yellow = "#FFFFA5",
--                 bright_blue = "#D6ACFF",
--                 bright_magenta = "#FF92DF",
--                 bright_cyan = "#A4FFFF",
--                 bright_white = "#FFFFFF",
--                 menu = "#21222C",
--                 visual = "#3E4452",
--                 gutter_fg = "#4B5263",
--                 nontext = "#3B4048",
--                 white = "#ABB2BF",
--                 black = "#121212",
--               },
--               -- show the '~' characters after the end of buffers
--               show_end_of_buffer = false, -- default false
--               -- use transparent background
--               transparent_bg = true, -- default false
--               -- set custom lualine background color
--               lualine_bg_color = "", -- default nil
--               -- set italic comment
--               italic_comment = true, -- default false
--               -- overrides the default highlights with table see `:h synIDattr`
--               overrides = {},
--               -- You can use overrides as table like this
--               -- overrides = {
--               --   NonText = { fg = "white" }, -- set NonText fg to white
--               --   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
--               --   Nothing = {} -- clear highlight of Nothing
--               -- },
--               -- Or you can also use it like a function to get color from theme
--               -- overrides = function (colors)
--               --   return {
--               --     NonText = { fg = colors.white }, -- set NonText fg to white of theme
--               --   }
--               -- end,
--             })
--             require('dracula').load()
--             vim.cmd('colorscheme dracula')
-- 		end})

--     use('github/copilot.vim')

--    use {
--        'mg979/vim-visual-multi', 
--		branch = 'master',
--    }

--     use({
--        "rose-pine/neovim",
--        as = 'rose-pine',
--        config = function()
--            vim.cmd('colorscheme rose-pine')
--        end})

--    use ({ 
--        "catppuccin/nvim",
--        as = "catppuccin",
--        config = function()
--            vim.cmd('colorscheme catppuccin')
--        end})

--     use ({
--         "morhetz/gruvbox",
--         as = 'gruvbox'
--     })

--     use({
--         'folke/tokyonight.nvim',
--         lazy = false,        -- make sure we load this during startup if it is your main colorscheme
--         priority = 1000,     -- make sure to load this before all the other start plugins
--         config = function()
--             -- Load the colorscheme here
--             vim.cmd.colorscheme 'tokyonight-night'
-- 
--             -- You can configure highlights by doing something like
--             vim.cmd.hi 'Comment gui=none'
--         end})

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},         -- Required
		{'hrsh7th/cmp-nvim-lsp'},     -- Required
		{'hrsh7th/cmp-buffer'},       -- Optional
		{'hrsh7th/cmp-path'},         -- Optional
		{'saadparwaiz1/cmp_luasnip'}, -- Optional
		{'hrsh7th/cmp-nvim-lua'},     -- Optional

		-- Snippets
		{'L3MON4D3/LuaSnip'},             -- Required
		{'rafamadriz/friendly-snippets'}, -- Optional
	}
}
end)


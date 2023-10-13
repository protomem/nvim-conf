local status, lazy = pcall(require, "lazy")
if not status then
	return
end

lazy.setup({
	-- Theme
	{
		"svrana/neosolarized.nvim",
		dependencies = "tjdevries/colorbuddy.nvim",
	},

	-- Icons
	{ "nvim-tree/nvim-web-devicons" },

	-- Colorizer
	{ "norcalli/nvim-colorizer.lua" },

	-- Statusline
	{ "nvim-lualine/lualine.nvim" },

	-- Bufferline
	{ "akinsho/bufferline.nvim" },

	-- LSP
	{ "neovim/nvim-lspconfig" },

	-- LSP servers and other utilities
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- Completion
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/nvim-cmp" },
	{ "onsails/lspkind.nvim" }, -- vscode-like pictograms

	-- Formmatting and linting
	{ "jose-elias-alvarez/null-ls.nvim" },
	{ "jay-babu/mason-null-ls.nvim" },
	{ "MunifTanjim/prettier.nvim" },

	-- Snippet
	{ "L3MON4D3/LuaSnip", dependencies = "rafamadriz/friendly-snippets" },
	{ "saadparwaiz1/cmp_luasnip" },

	-- Treesitter
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},

	-- Indentation
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl" },

	-- Pairs and tags
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{ "windwp/nvim-ts-autotag" },

	-- Telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.3",
		dependencies = "nvim-lua/plenary.nvim",
	},
	{ "nvim-telescope/telescope-file-browser.nvim" },

	-- UI
	{ "nvimdev/lspsaga.nvim" },

	-- Git
	{ "lewis6991/gitsigns.nvim" },

	-- AI
	{
		"Exafunction/codeium.vim",
		config = function()
			-- Change '<C-g>' here to any keycode you like.
			vim.keymap.set("i", "<C-g>", function()
				return vim.fn["codeium#Accept"]()
			end, { expr = true })
			vim.keymap.set("i", "<c-;>", function()
				return vim.fn["codeium#CycleCompletions"](1)
			end, { expr = true })
			vim.keymap.set("i", "<c-,>", function()
				return vim.fn["codeium#CycleCompletions"](-1)
			end, { expr = true })
			vim.keymap.set("i", "<c-x>", function()
				return vim.fn["codeium#Clear"]()
			end, { expr = true })
		end,
	},
})

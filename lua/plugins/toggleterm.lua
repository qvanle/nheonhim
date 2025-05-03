local M = {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			direction = "float",
			shell = "/bin/zsh -l", -- Forces zsh to run as a login shell, which sources ~/.zshrc
			float_opts = {
				border = "double", -- 'single' | 'double' | 'shadow' | 'curved'
				winblend = 3,
				highlights = {
					border = "Normal",
					background = "Normal",
				},
				width = 110,
				height = 10,
				row = vim.o.lines + 101, -- subtract 21 to account for height + 1-based row index
			},
		})
	end,
}

return M

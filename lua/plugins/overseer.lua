local M = {
	"stevearc/overseer.nvim",
	opts = {},
	config = function()
		local overseer = require("overseer")
		overseer.setup()
		overseer.load_template("user.build-sh")
	end,
}

return M

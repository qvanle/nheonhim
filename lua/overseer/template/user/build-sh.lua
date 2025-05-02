local overseer = require("overseer")

return {
	name = "build.sh",
	builder = function()
		local build_sh_path = vim.fn.expand("%:p:h") .. "/build.sh"
		if vim.fn.filereadable(build_sh_path) == 0 then
			-- print error: there are no build.sh file in the current directory
			vim.notify("There are no build.sh file in the current directory", vim.log.levels.ERROR)
		end
		return {
			cmd = "./build.sh",
			components = { "default" },
		}
	end,
	condition = {
		--callback = function()
		--		local build_sh_path = vim.fn.expand("%:p:h") .. "/build.sh"
		--	return vim.fn.filereadable(build_sh_path) == 1
		--end,
	},
}

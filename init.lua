require("config.lazy")
require("config.format")
require("nheonhim")

local project_config = vim.fn.getcwd() .. "/nvim-setup.lua"
if vim.fn.filereadable(project_config) == 1 then
    vim.notify("Loading project config: " .. project_config, vim.log.levels.INFO, { title = "Project Config" })
    dofile(project_config)
end

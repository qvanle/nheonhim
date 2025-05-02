local M = {
	"folke/neoconf.nvim",
	config = function()
		require("neoconf").setup({
			-- name of the local settings files
			local_settings = ".nvim-config.lua",
			-- name of the global settings file in your Neovim config directory
			global_settings = "nvim-config.lua",
			-- import existing settings from other plugins
			import = {
				vscode = true, -- local .vscode/settings.json
				coc = true, -- global/local coc-settings.json
				nlsp = true, -- global/local nlsp-settings.nvim json settings
			},
			-- send new configuration to lsp clients when changing json settings
			live_reload = true,
			-- set the filetype to lua for settings files
			filetype_jsonc = false,
			plugins = {
				-- configures lsp clients with settings in the following order:
				-- - lua settings passed in lspconfig setup
				-- - global lua settings
				-- - local lua settings
				lspconfig = {
					enabled = true,
				},
				-- configures jsonls to get completion in .neoconf.lua files
				jsonls = {
					enabled = true,
					-- only show completion in lua settings for configured lsp servers
					configured_servers_only = true,
				},
				-- configures lua_ls to get completion of lspconfig server settings
				lua_ls = {
					-- by default, lua_ls annotations are only enabled in your neovim config directory
					enabled_for_neovim_config = true,
					-- explicitly enable adding annotations. Mostly relevant to put in your local .neoconf.lua file
					enabled = false,
				},
			},
		})
	end,
}

return M

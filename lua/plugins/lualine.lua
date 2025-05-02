local M = {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {
                    statusline = {'AvanteSelectedFiles', 'Avante'},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                always_show_tabline = true,
                globalstatus = false,
                refresh = {
                    statusline = 100,
                    tabline = 100,
                    winbar = 100,
                }
            },
            sections = {
                lualine_a = {'mode'},
                --lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_b = {'filetype'},
                --lualine_c = {'filename'},
                lualine_c = {'diagnostics'},
                --lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_x = {},
                --lualine_y = {'progress'},
                lualine_y = {'diff'},
                --lualine_z = {'location'}
                lualine_z = {'progress'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    end
}

return M

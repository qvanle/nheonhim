local M = {
    'stevearc/overseer.nvim',
    opts = {},
    config = function() 
        require('overseer').setup()
    end
}

return M

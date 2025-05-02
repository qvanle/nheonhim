local M = {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
        require("toggleterm").setup({
            direction = "horizontal",
            shell = "/bin/zsh -l",  -- Forces zsh to run as a login shell, which sources ~/.zshrc
        })
    end
}

return M


local M = {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",  -- Automatically update parsers
    event = { "BufReadPost", "BufNewFile" },
    config = function()
      require("nvim-treesitter.configs").setup({
        -- List of parsers to install
        ensure_installed = {
          "lua", "python", "javascript", "typescript", "html", "css", "c", "cpp", "bash", "json"
        },

        -- Enable syntax highlighting
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },

        -- Optional: Incremental selection
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            node_decremental = "grm",
          },
        },

        -- Optional: Code folding
        indent = {
          enable = true
        },
      })
    end,
  }
}


return M

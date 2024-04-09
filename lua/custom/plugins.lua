local plugins = {
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- "pyright",
        "mypy",
        "ruff"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "lervag/vimtex",
    lazy=false,
    init=function ()
    vim.g.vimtex_view_method = 'zathura'
    vim.g.vimtex_syntax_enabled = 0
    end
  },
}
return plugins
